import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:love_cook/src/features/recipes/domain/models/recipe_model.dart';
import 'package:love_cook/src/features/recipes/presentation/create_recipe_screen.dart';
import 'recipe_feed_controller.dart';

// Dùng ConsumerWidget thay vì StatefulWidget/StatelessWidget để dùng Riverpod
class RecipeFeedScreen extends ConsumerWidget {
  const RecipeFeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Lắng nghe dữ liệu từ Provider
    final recipeState = ref.watch(recipeFeedProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Món ngon mỗi ngày')),

      // Hàm .when xử lý 3 trạng thái cực gọn
      body: recipeState.when(
        // 1. Đang tải
        loading: () => const Center(child: CircularProgressIndicator()),

        // 2. Có lỗi
        error: (error, stack) => Center(child: Text('Lỗi rồi: $error')),

        // 3. Có dữ liệu (List món ăn)
        data: (recipes) {
          if (recipes.isEmpty) {
            return const Center(
              child: Text('Chưa có công thức nào. Đăng ngay!'),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: recipes.length,
            separatorBuilder: (ctx, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final recipe = recipes[index];
              return RecipeCard(recipe: recipe);
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (_) => const CreateRecipeScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Widget con để hiển thị từng món ăn (Tách ra cho code sạch)
class RecipeCard extends StatelessWidget {
  final RecipeModel recipe;
  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ảnh món ăn (Dùng Container giả lập nếu chưa có ảnh thật)
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: recipe.imageUrl.isNotEmpty
                ? Image.network(
                    recipe.imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    // Xử lý khi ảnh lỗi hoặc đang load
                    errorBuilder: (ctx, _, __) => Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image),
                    ),
                  )
                : Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.restaurant,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipe.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.favorite, size: 16, color: Colors.red),
                    const SizedBox(width: 4),
                    Text('${recipe.likesCount}'),
                    const SizedBox(width: 16),
                    const Icon(Icons.comment, size: 16, color: Colors.blue),
                    const SizedBox(width: 4),
                    Text('${recipe.commentsCount}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
