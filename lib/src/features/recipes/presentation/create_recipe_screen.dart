import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:love_cook/src/features/recipes/data/recipe_repository.dart';

class CreateRecipeScreen extends ConsumerStatefulWidget {
  const CreateRecipeScreen({super.key});

  @override
  ConsumerState<CreateRecipeScreen> createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends ConsumerState<CreateRecipeScreen> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  File? _selectedImage;
  bool _isLoading = false;

  // Logic chọn ảnh
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  // Logic bấm nút Đăng
  Future<void> _submit() async {
    if (_titleController.text.isEmpty) return;

    setState(() => _isLoading = true);
    try {
      await ref
          .read(recipeRepositoryProvider)
          .addRecipe(
            title: _titleController.text,
            description: _descController.text,
            imageFile: _selectedImage,
            userId: 'user_test_01', // ID giả tạm thời
          );
      if (mounted) context.pop(); // Đóng màn hình
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Lỗi: $e')));
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thêm món mới')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Ô chọn ảnh
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[200],
                child: _selectedImage != null
                    ? Image.file(_selectedImage!, fit: BoxFit.cover)
                    : const Icon(
                        Icons.add_a_photo,
                        size: 50,
                        color: Colors.grey,
                      ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Tên món ăn'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _descController,
              decoration: const InputDecoration(labelText: 'Mô tả'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _isLoading ? null : _submit,
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('ĐĂNG BÀI'),
            ),
          ],
        ),
      ),
    );
  }
}
