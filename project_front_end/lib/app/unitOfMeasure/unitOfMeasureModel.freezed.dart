// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unitOfMeasureModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitOfMeasureModel _$UnitOfMeasureModelFromJson(Map<String, dynamic> json) {
  return _UnitOfMeasureModel.fromJson(json);
}

/// @nodoc
mixin _$UnitOfMeasureModel {
  String get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitOfMeasureModelCopyWith<UnitOfMeasureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitOfMeasureModelCopyWith<$Res> {
  factory $UnitOfMeasureModelCopyWith(
          UnitOfMeasureModel value, $Res Function(UnitOfMeasureModel) then) =
      _$UnitOfMeasureModelCopyWithImpl<$Res, UnitOfMeasureModel>;
  @useResult
  $Res call({String id, String? description});
}

/// @nodoc
class _$UnitOfMeasureModelCopyWithImpl<$Res, $Val extends UnitOfMeasureModel>
    implements $UnitOfMeasureModelCopyWith<$Res> {
  _$UnitOfMeasureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnitOfMeasureModelCopyWith<$Res>
    implements $UnitOfMeasureModelCopyWith<$Res> {
  factory _$$_UnitOfMeasureModelCopyWith(_$_UnitOfMeasureModel value,
          $Res Function(_$_UnitOfMeasureModel) then) =
      __$$_UnitOfMeasureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? description});
}

/// @nodoc
class __$$_UnitOfMeasureModelCopyWithImpl<$Res>
    extends _$UnitOfMeasureModelCopyWithImpl<$Res, _$_UnitOfMeasureModel>
    implements _$$_UnitOfMeasureModelCopyWith<$Res> {
  __$$_UnitOfMeasureModelCopyWithImpl(
      _$_UnitOfMeasureModel _value, $Res Function(_$_UnitOfMeasureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
  }) {
    return _then(_$_UnitOfMeasureModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnitOfMeasureModel implements _UnitOfMeasureModel {
  const _$_UnitOfMeasureModel({required this.id, this.description});

  factory _$_UnitOfMeasureModel.fromJson(Map<String, dynamic> json) =>
      _$$_UnitOfMeasureModelFromJson(json);

  @override
  final String id;
  @override
  final String? description;

  @override
  String toString() {
    return 'UnitOfMeasureModel(id: $id, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitOfMeasureModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitOfMeasureModelCopyWith<_$_UnitOfMeasureModel> get copyWith =>
      __$$_UnitOfMeasureModelCopyWithImpl<_$_UnitOfMeasureModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitOfMeasureModelToJson(
      this,
    );
  }
}

abstract class _UnitOfMeasureModel implements UnitOfMeasureModel {
  const factory _UnitOfMeasureModel(
      {required final String id,
      final String? description}) = _$_UnitOfMeasureModel;

  factory _UnitOfMeasureModel.fromJson(Map<String, dynamic> json) =
      _$_UnitOfMeasureModel.fromJson;

  @override
  String get id;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_UnitOfMeasureModelCopyWith<_$_UnitOfMeasureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
