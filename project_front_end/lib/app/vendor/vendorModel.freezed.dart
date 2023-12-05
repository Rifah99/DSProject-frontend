// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vendorModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VendorModel _$VendorModelFromJson(Map<String, dynamic> json) {
  return _VendorModel.fromJson(json);
}

/// @nodoc
mixin _$VendorModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  PaymentTermsModel? get paymentTerms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorModelCopyWith<VendorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorModelCopyWith<$Res> {
  factory $VendorModelCopyWith(
          VendorModel value, $Res Function(VendorModel) then) =
      _$VendorModelCopyWithImpl<$Res, VendorModel>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String? address,
      bool? blocked,
      PaymentTermsModel? paymentTerms});

  $PaymentTermsModelCopyWith<$Res>? get paymentTerms;
}

/// @nodoc
class _$VendorModelCopyWithImpl<$Res, $Val extends VendorModel>
    implements $VendorModelCopyWith<$Res> {
  _$VendorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? address = freezed,
    Object? blocked = freezed,
    Object? paymentTerms = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as PaymentTermsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentTermsModelCopyWith<$Res>? get paymentTerms {
    if (_value.paymentTerms == null) {
      return null;
    }

    return $PaymentTermsModelCopyWith<$Res>(_value.paymentTerms!, (value) {
      return _then(_value.copyWith(paymentTerms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VendorModelCopyWith<$Res>
    implements $VendorModelCopyWith<$Res> {
  factory _$$_VendorModelCopyWith(
          _$_VendorModel value, $Res Function(_$_VendorModel) then) =
      __$$_VendorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String? address,
      bool? blocked,
      PaymentTermsModel? paymentTerms});

  @override
  $PaymentTermsModelCopyWith<$Res>? get paymentTerms;
}

/// @nodoc
class __$$_VendorModelCopyWithImpl<$Res>
    extends _$VendorModelCopyWithImpl<$Res, _$_VendorModel>
    implements _$$_VendorModelCopyWith<$Res> {
  __$$_VendorModelCopyWithImpl(
      _$_VendorModel _value, $Res Function(_$_VendorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? address = freezed,
    Object? blocked = freezed,
    Object? paymentTerms = freezed,
  }) {
    return _then(_$_VendorModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as PaymentTermsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VendorModel implements _VendorModel {
  const _$_VendorModel(
      {this.id,
      required this.name,
      this.address,
      this.blocked,
      this.paymentTerms});

  factory _$_VendorModel.fromJson(Map<String, dynamic> json) =>
      _$$_VendorModelFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? address;
  @override
  final bool? blocked;
  @override
  final PaymentTermsModel? paymentTerms;

  @override
  String toString() {
    return 'VendorModel(id: $id, name: $name, address: $address, blocked: $blocked, paymentTerms: $paymentTerms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, address, blocked, paymentTerms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendorModelCopyWith<_$_VendorModel> get copyWith =>
      __$$_VendorModelCopyWithImpl<_$_VendorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorModelToJson(
      this,
    );
  }
}

abstract class _VendorModel implements VendorModel {
  const factory _VendorModel(
      {final String? id,
      required final String name,
      final String? address,
      final bool? blocked,
      final PaymentTermsModel? paymentTerms}) = _$_VendorModel;

  factory _VendorModel.fromJson(Map<String, dynamic> json) =
      _$_VendorModel.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get address;
  @override
  bool? get blocked;
  @override
  PaymentTermsModel? get paymentTerms;
  @override
  @JsonKey(ignore: true)
  _$$_VendorModelCopyWith<_$_VendorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
