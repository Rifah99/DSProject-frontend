// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'itemCategoryModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemCategoryModel _$ItemCategoryModelFromJson(Map<String, dynamic> json) {
  return _ItemCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ItemCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCategoryModelCopyWith<ItemCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCategoryModelCopyWith<$Res> {
  factory $ItemCategoryModelCopyWith(
          ItemCategoryModel value, $Res Function(ItemCategoryModel) then) =
      _$ItemCategoryModelCopyWithImpl<$Res, ItemCategoryModel>;
  @useResult
  $Res call({String id, String description, bool blocked});
}

/// @nodoc
class _$ItemCategoryModelCopyWithImpl<$Res, $Val extends ItemCategoryModel>
    implements $ItemCategoryModelCopyWith<$Res> {
  _$ItemCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? blocked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCategoryModelCopyWith<$Res>
    implements $ItemCategoryModelCopyWith<$Res> {
  factory _$$_ItemCategoryModelCopyWith(_$_ItemCategoryModel value,
          $Res Function(_$_ItemCategoryModel) then) =
      __$$_ItemCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String description, bool blocked});
}

/// @nodoc
class __$$_ItemCategoryModelCopyWithImpl<$Res>
    extends _$ItemCategoryModelCopyWithImpl<$Res, _$_ItemCategoryModel>
    implements _$$_ItemCategoryModelCopyWith<$Res> {
  __$$_ItemCategoryModelCopyWithImpl(
      _$_ItemCategoryModel _value, $Res Function(_$_ItemCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? blocked = null,
  }) {
    return _then(_$_ItemCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemCategoryModel implements _ItemCategoryModel {
  const _$_ItemCategoryModel(
      {required this.id, required this.description, required this.blocked});

  factory _$_ItemCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemCategoryModelFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final bool blocked;

  @override
  String toString() {
    return 'ItemCategoryModel(id: $id, description: $description, blocked: $blocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.blocked, blocked) || other.blocked == blocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, blocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCategoryModelCopyWith<_$_ItemCategoryModel> get copyWith =>
      __$$_ItemCategoryModelCopyWithImpl<_$_ItemCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemCategoryModelToJson(
      this,
    );
  }
}

abstract class _ItemCategoryModel implements ItemCategoryModel {
  const factory _ItemCategoryModel(
      {required final String id,
      required final String description,
      required final bool blocked}) = _$_ItemCategoryModel;

  factory _ItemCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_ItemCategoryModel.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  bool get blocked;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCategoryModelCopyWith<_$_ItemCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
