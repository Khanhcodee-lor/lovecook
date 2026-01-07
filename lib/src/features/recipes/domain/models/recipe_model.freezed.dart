// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  String get id => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get ingredients =>
      throw _privateConstructorUsedError; // Default giá trị rỗng để tránh null
  List<String> get steps => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  int get commentsCount =>
      throw _privateConstructorUsedError; // Sử dụng converter cho trường thời gian
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
    RecipeModel value,
    $Res Function(RecipeModel) then,
  ) = _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call({
    String id,
    String authorId,
    String title,
    String description,
    List<String> ingredients,
    List<String> steps,
    String imageUrl,
    int likesCount,
    int commentsCount,
    @TimestampConverter() DateTime createdAt,
  });
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? title = null,
    Object? description = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? imageUrl = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            authorId: null == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            ingredients: null == ingredients
                ? _value.ingredients
                : ingredients // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            steps: null == steps
                ? _value.steps
                : steps // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            likesCount: null == likesCount
                ? _value.likesCount
                : likesCount // ignore: cast_nullable_to_non_nullable
                      as int,
            commentsCount: null == commentsCount
                ? _value.commentsCount
                : commentsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecipeModelImplCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$RecipeModelImplCopyWith(
    _$RecipeModelImpl value,
    $Res Function(_$RecipeModelImpl) then,
  ) = __$$RecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String authorId,
    String title,
    String description,
    List<String> ingredients,
    List<String> steps,
    String imageUrl,
    int likesCount,
    int commentsCount,
    @TimestampConverter() DateTime createdAt,
  });
}

/// @nodoc
class __$$RecipeModelImplCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$RecipeModelImpl>
    implements _$$RecipeModelImplCopyWith<$Res> {
  __$$RecipeModelImplCopyWithImpl(
    _$RecipeModelImpl _value,
    $Res Function(_$RecipeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? title = null,
    Object? description = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? imageUrl = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$RecipeModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        authorId: null == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        ingredients: null == ingredients
            ? _value._ingredients
            : ingredients // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        steps: null == steps
            ? _value._steps
            : steps // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        likesCount: null == likesCount
            ? _value.likesCount
            : likesCount // ignore: cast_nullable_to_non_nullable
                  as int,
        commentsCount: null == commentsCount
            ? _value.commentsCount
            : commentsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeModelImpl implements _RecipeModel {
  const _$RecipeModelImpl({
    required this.id,
    required this.authorId,
    required this.title,
    required this.description,
    final List<String> ingredients = const [],
    final List<String> steps = const [],
    required this.imageUrl,
    this.likesCount = 0,
    this.commentsCount = 0,
    @TimestampConverter() required this.createdAt,
  }) : _ingredients = ingredients,
       _steps = steps;

  factory _$RecipeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String authorId;
  @override
  final String title;
  @override
  final String description;
  final List<String> _ingredients;
  @override
  @JsonKey()
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  // Default giá trị rỗng để tránh null
  final List<String> _steps;
  // Default giá trị rỗng để tránh null
  @override
  @JsonKey()
  List<String> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final String imageUrl;
  @override
  @JsonKey()
  final int likesCount;
  @override
  @JsonKey()
  final int commentsCount;
  // Sử dụng converter cho trường thời gian
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'RecipeModel(id: $id, authorId: $authorId, title: $title, description: $description, ingredients: $ingredients, steps: $steps, imageUrl: $imageUrl, likesCount: $likesCount, commentsCount: $commentsCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._ingredients,
              _ingredients,
            ) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    authorId,
    title,
    description,
    const DeepCollectionEquality().hash(_ingredients),
    const DeepCollectionEquality().hash(_steps),
    imageUrl,
    likesCount,
    commentsCount,
    createdAt,
  );

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeModelImplToJson(this);
  }
}

abstract class _RecipeModel implements RecipeModel {
  const factory _RecipeModel({
    required final String id,
    required final String authorId,
    required final String title,
    required final String description,
    final List<String> ingredients,
    final List<String> steps,
    required final String imageUrl,
    final int likesCount,
    final int commentsCount,
    @TimestampConverter() required final DateTime createdAt,
  }) = _$RecipeModelImpl;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$RecipeModelImpl.fromJson;

  @override
  String get id;
  @override
  String get authorId;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get ingredients; // Default giá trị rỗng để tránh null
  @override
  List<String> get steps;
  @override
  String get imageUrl;
  @override
  int get likesCount;
  @override
  int get commentsCount; // Sử dụng converter cho trường thời gian
  @override
  @TimestampConverter()
  DateTime get createdAt;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
