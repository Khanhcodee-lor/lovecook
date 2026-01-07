import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:love_cook/src/features/recipes/data/recipe_repository.dart';
import 'package:love_cook/src/features/recipes/domain/models/recipe_model.dart';

// Đây là cái UI sẽ gọi (watch)
final recipeFeedProvider = StreamProvider.autoDispose<List<RecipeModel>>((ref) {
  // Gọi repository lấy dữ liệu
  final repository = ref.watch(recipeRepositoryProvider);
  return repository.getRecipes();
});
