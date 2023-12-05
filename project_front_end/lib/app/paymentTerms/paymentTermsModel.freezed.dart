// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paymentTermsModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTermsModel _$PaymentTermsModelFromJson(Map<String, dynamic> json) {
  return _PaymentTermsModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentTermsModel {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  num? get dueDateCalculation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTermsModelCopyWith<PaymentTermsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTermsModelCopyWith<$Res> {
  factory $PaymentTermsModelCopyWith(
          PaymentTermsModel value, $Res Function(PaymentTermsModel) then) =
      _$PaymentTermsModelCopyWithImpl<$Res, PaymentTermsModel>;
  @useResult
  $Res call({String id, String description, num? dueDateCalculation});
}

/// @nodoc
class _$PaymentTermsModelCopyWithImpl<$Res, $Val extends PaymentTermsModel>
    implements $PaymentTermsModelCopyWith<$Res> {
  _$PaymentTermsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? dueDateCalculation = freezed,
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
      dueDateCalculation: freezed == dueDateCalculation
          ? _value.dueDateCalculation
          : dueDateCalculation // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTermsModelCopyWith<$Res>
    implements $PaymentTermsModelCopyWith<$Res> {
  factory _$$_PaymentTermsModelCopyWith(_$_PaymentTermsModel value,
          $Res Function(_$_PaymentTermsModel) then) =
      __$$_PaymentTermsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String description, num? dueDateCalculation});
}

/// @nodoc
class __$$_PaymentTermsModelCopyWithImpl<$Res>
    extends _$PaymentTermsModelCopyWithImpl<$Res, _$_PaymentTermsModel>
    implements _$$_PaymentTermsModelCopyWith<$Res> {
  __$$_PaymentTermsModelCopyWithImpl(
      _$_PaymentTermsModel _value, $Res Function(_$_PaymentTermsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? dueDateCalculation = freezed,
  }) {
    return _then(_$_PaymentTermsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDateCalculation: freezed == dueDateCalculation
          ? _value.dueDateCalculation
          : dueDateCalculation // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTermsModel implements _PaymentTermsModel {
  const _$_PaymentTermsModel(
      {required this.id,
      required this.description,
      required this.dueDateCalculation});

  factory _$_PaymentTermsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTermsModelFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final num? dueDateCalculation;

  @override
  String toString() {
    return 'PaymentTermsModel(id: $id, description: $description, dueDateCalculation: $dueDateCalculation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTermsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDateCalculation, dueDateCalculation) ||
                other.dueDateCalculation == dueDateCalculation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, dueDateCalculation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTermsModelCopyWith<_$_PaymentTermsModel> get copyWith =>
      __$$_PaymentTermsModelCopyWithImpl<_$_PaymentTermsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTermsModelToJson(
      this,
    );
  }
}

abstract class _PaymentTermsModel implements PaymentTermsModel {
  const factory _PaymentTermsModel(
      {required final String id,
      required final String description,
      required final num? dueDateCalculation}) = _$_PaymentTermsModel;

  factory _PaymentTermsModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentTermsModel.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  num? get dueDateCalculation;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTermsModelCopyWith<_$_PaymentTermsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
