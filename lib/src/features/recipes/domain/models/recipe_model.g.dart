// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeModelImpl _$$RecipeModelImplFromJson(Map<String, dynamic> json) =>
    _$RecipeModelImpl(
      id: json['id'] as String,
      authorId: json['authorId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      ingredients:
          (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      imageUrl: json['imageUrl'] as String,
      likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
      commentsCount: (json['commentsCount'] as num?)?.toInt() ?? 0,
      createdAt: const TimestampConverter().fromJson(
        json['createdAt'] as Timestamp,
      ),
    );

Map<String, dynamic> _$$RecipeModelImplToJson(_$RecipeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'title': instance.title,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'imageUrl': instance.imageUrl,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
