import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/models/recipe_model.dart';

final recipeRepositoryProvider = Provider<RecipeRepository>((ref) {
  return RecipeRepository(FirebaseFirestore.instance, FirebaseStorage.instance);
});

class RecipeRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  RecipeRepository(this._firestore, this._storage);

  // 1. Lấy danh sách (Code cũ)
  Stream<List<RecipeModel>> getRecipes() {
    return _firestore
        .collection('recipes')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs
              .map((doc) {
                try {
                  return RecipeModel.fromDocument(doc);
                } catch (e) {
                  // Bỏ qua các doc lỗi (như cái bạn nhập tay thiếu trường)
                  return null;
                }
              })
              .whereType<RecipeModel>()
              .toList(); // Lọc bỏ null
        });
  }

  // 2. Hàm MỚI: Đăng bài
  Future<void> addRecipe({
    required String title,
    required String description,
    required File? imageFile,
    required String userId,
  }) async {
    String imageUrl = '';

    // A. Upload ảnh nếu có
    if (imageFile != null) {
      final ref = _storage.ref().child(
        'recipe_images/${DateTime.now().millisecondsSinceEpoch}.jpg',
      );
      await ref.putFile(imageFile);
      imageUrl = await ref.getDownloadURL();
    }

    // B. Chuẩn bị dữ liệu đầy đủ
    final docRef = _firestore.collection('recipes').doc();
    final recipe = RecipeModel(
      id: docRef.id,
      authorId: userId,
      title: title,
      description: description,
      imageUrl: imageUrl, // Đã có link ảnh
      createdAt: DateTime.now(), // Đã có giờ tạo
      likesCount: 0,
      commentsCount: 0,
      ingredients: [],
      steps: [],
    );

    // C. Ghi lên Firestore
    await docRef.set(recipe.toJson());
  }
}
