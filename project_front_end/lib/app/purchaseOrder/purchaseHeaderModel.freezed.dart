// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseHeaderModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseHeaderModel _$PurchaseHeaderModelFromJson(Map<String, dynamic> json) {
  return _PurchaseHeaderModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseHeaderModel {
  String get orderId => throw _privateConstructorUsedError;
  DateTime? get documentDate => throw _privateConstructorUsedError;
  DateTime? get postingDate => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  VendorModel? get vendor => throw _privateConstructorUsedError;
  PaymentTermsModel? get paymentTerms => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<PurchaseLineModel> get purchaseLines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseHeaderModelCopyWith<PurchaseHeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHeaderModelCopyWith<$Res> {
  factory $PurchaseHeaderModelCopyWith(
          PurchaseHeaderModel value, $Res Function(PurchaseHeaderModel) then) =
      _$PurchaseHeaderModelCopyWithImpl<$Res, PurchaseHeaderModel>;
  @useResult
  $Res call(
      {String orderId,
      DateTime? documentDate,
      DateTime? postingDate,
      DateTime? dueDate,
      VendorModel? vendor,
      PaymentTermsModel? paymentTerms,
      String status,
      List<PurchaseLineModel> purchaseLines});

  $VendorModelCopyWith<$Res>? get vendor;
  $PaymentTermsModelCopyWith<$Res>? get paymentTerms;
}

/// @nodoc
class _$PurchaseHeaderModelCopyWithImpl<$Res, $Val extends PurchaseHeaderModel>
    implements $PurchaseHeaderModelCopyWith<$Res> {
  _$PurchaseHeaderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? documentDate = freezed,
    Object? postingDate = freezed,
    Object? dueDate = freezed,
    Object? vendor = freezed,
    Object? paymentTerms = freezed,
    Object? status = null,
    Object? purchaseLines = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      documentDate: freezed == documentDate
          ? _value.documentDate
          : documentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postingDate: freezed == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as VendorModel?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as PaymentTermsModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseLines: null == purchaseLines
          ? _value.purchaseLines
          : purchaseLines // ignore: cast_nullable_to_non_nullable
              as List<PurchaseLineModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorModelCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $VendorModelCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
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
abstract class _$$_PurchaseHeaderModelCopyWith<$Res>
    implements $PurchaseHeaderModelCopyWith<$Res> {
  factory _$$_PurchaseHeaderModelCopyWith(_$_PurchaseHeaderModel value,
          $Res Function(_$_PurchaseHeaderModel) then) =
      __$$_PurchaseHeaderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      DateTime? documentDate,
      DateTime? postingDate,
      DateTime? dueDate,
      VendorModel? vendor,
      PaymentTermsModel? paymentTerms,
      String status,
      List<PurchaseLineModel> purchaseLines});

  @override
  $VendorModelCopyWith<$Res>? get vendor;
  @override
  $PaymentTermsModelCopyWith<$Res>? get paymentTerms;
}

/// @nodoc
class __$$_PurchaseHeaderModelCopyWithImpl<$Res>
    extends _$PurchaseHeaderModelCopyWithImpl<$Res, _$_PurchaseHeaderModel>
    implements _$$_PurchaseHeaderModelCopyWith<$Res> {
  __$$_PurchaseHeaderModelCopyWithImpl(_$_PurchaseHeaderModel _value,
      $Res Function(_$_PurchaseHeaderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? documentDate = freezed,
    Object? postingDate = freezed,
    Object? dueDate = freezed,
    Object? vendor = freezed,
    Object? paymentTerms = freezed,
    Object? status = null,
    Object? purchaseLines = null,
  }) {
    return _then(_$_PurchaseHeaderModel(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      documentDate: freezed == documentDate
          ? _value.documentDate
          : documentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postingDate: freezed == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as VendorModel?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as PaymentTermsModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseLines: null == purchaseLines
          ? _value._purchaseLines
          : purchaseLines // ignore: cast_nullable_to_non_nullable
              as List<PurchaseLineModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseHeaderModel implements _PurchaseHeaderModel {
  const _$_PurchaseHeaderModel(
      {required this.orderId,
      this.documentDate,
      this.postingDate,
      this.dueDate,
      required this.vendor,
      this.paymentTerms,
      required this.status,
      final List<PurchaseLineModel> purchaseLines =
          const <PurchaseLineModel>[]})
      : _purchaseLines = purchaseLines;

  factory _$_PurchaseHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseHeaderModelFromJson(json);

  @override
  final String orderId;
  @override
  final DateTime? documentDate;
  @override
  final DateTime? postingDate;
  @override
  final DateTime? dueDate;
  @override
  final VendorModel? vendor;
  @override
  final PaymentTermsModel? paymentTerms;
  @override
  final String status;
  final List<PurchaseLineModel> _purchaseLines;
  @override
  @JsonKey()
  List<PurchaseLineModel> get purchaseLines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseLines);
  }

  @override
  String toString() {
    return 'PurchaseHeaderModel(orderId: $orderId, documentDate: $documentDate, postingDate: $postingDate, dueDate: $dueDate, vendor: $vendor, paymentTerms: $paymentTerms, status: $status, purchaseLines: $purchaseLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseHeaderModel &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.documentDate, documentDate) ||
                other.documentDate == documentDate) &&
            (identical(other.postingDate, postingDate) ||
                other.postingDate == postingDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._purchaseLines, _purchaseLines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      documentDate,
      postingDate,
      dueDate,
      vendor,
      paymentTerms,
      status,
      const DeepCollectionEquality().hash(_purchaseLines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseHeaderModelCopyWith<_$_PurchaseHeaderModel> get copyWith =>
      __$$_PurchaseHeaderModelCopyWithImpl<_$_PurchaseHeaderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseHeaderModelToJson(
      this,
    );
  }
}

abstract class _PurchaseHeaderModel implements PurchaseHeaderModel {
  const factory _PurchaseHeaderModel(
      {required final String orderId,
      final DateTime? documentDate,
      final DateTime? postingDate,
      final DateTime? dueDate,
      required final VendorModel? vendor,
      final PaymentTermsModel? paymentTerms,
      required final String status,
      final List<PurchaseLineModel> purchaseLines}) = _$_PurchaseHeaderModel;

  factory _PurchaseHeaderModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseHeaderModel.fromJson;

  @override
  String get orderId;
  @override
  DateTime? get documentDate;
  @override
  DateTime? get postingDate;
  @override
  DateTime? get dueDate;
  @override
  VendorModel? get vendor;
  @override
  PaymentTermsModel? get paymentTerms;
  @override
  String get status;
  @override
  List<PurchaseLineModel> get purchaseLines;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseHeaderModelCopyWith<_$_PurchaseHeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
