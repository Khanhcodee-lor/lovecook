import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Khai báo các file code sinh ra (sẽ đỏ cho đến khi chạy build_runner)
part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

// Helper để convert Timestamp của Firestore sang DateTime của Dart
class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@freezed
class RecipeModel with _$RecipeModel {
  // Constructor factory cho phép tạo object và copyWith
  const factory RecipeModel({
    required String id,
    required String authorId,
    required String title,
    required String description,
    @Default([]) List<String> ingredients, // Default giá trị rỗng để tránh null
    @Default([]) List<String> steps,
    required String imageUrl,
    @Default(0) int likesCount,
    @Default(0) int commentsCount,

    // Sử dụng converter cho trường thời gian
    @TimestampConverter() required DateTime createdAt,
  }) = _RecipeModel;

  // Constructor để parse JSON từ Firestore trả về
  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);

  // Helper method để convert từ Firestore DocumentSnapshot (tiện lợi khi dùng trong Repo)
  factory RecipeModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    // Gán ID từ document ID vào model luôn cho tiện xử lý
    return RecipeModel.fromJson(data).copyWith(id: doc.id);
  }
}
