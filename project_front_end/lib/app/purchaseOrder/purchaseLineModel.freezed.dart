// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchaseLineModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseLineModel _$PurchaseLineModelFromJson(Map<String, dynamic> json) {
  return _PurchaseLineModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseLineModel {
  num? get id => throw _privateConstructorUsedError;
  PurchaseHeaderModel? get purchase => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ItemModel? get item => throw _privateConstructorUsedError;
  num? get qty => throw _privateConstructorUsedError;
  num? get unitCost => throw _privateConstructorUsedError;
  num? get lineAmount => throw _privateConstructorUsedError;
  num? get qtyToReceive => throw _privateConstructorUsedError;
  num? get qtyReceived => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  UnitOfMeasureModel? get unitOfMeasure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseLineModelCopyWith<PurchaseLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseLineModelCopyWith<$Res> {
  factory $PurchaseLineModelCopyWith(
          PurchaseLineModel value, $Res Function(PurchaseLineModel) then) =
      _$PurchaseLineModelCopyWithImpl<$Res, PurchaseLineModel>;
  @useResult
  $Res call(
      {num? id,
      PurchaseHeaderModel? purchase,
      String? description,
      ItemModel? item,
      num? qty,
      num? unitCost,
      num? lineAmount,
      num? qtyToReceive,
      num? qtyReceived,
      LocationModel? location,
      UnitOfMeasureModel? unitOfMeasure});

  $PurchaseHeaderModelCopyWith<$Res>? get purchase;
  $ItemModelCopyWith<$Res>? get item;
  $LocationModelCopyWith<$Res>? get location;
  $UnitOfMeasureModelCopyWith<$Res>? get unitOfMeasure;
}

/// @nodoc
class _$PurchaseLineModelCopyWithImpl<$Res, $Val extends PurchaseLineModel>
    implements $PurchaseLineModelCopyWith<$Res> {
  _$PurchaseLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? purchase = freezed,
    Object? description = freezed,
    Object? item = freezed,
    Object? qty = freezed,
    Object? unitCost = freezed,
    Object? lineAmount = freezed,
    Object? qtyToReceive = freezed,
    Object? qtyReceived = freezed,
    Object? location = freezed,
    Object? unitOfMeasure = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      purchase: freezed == purchase
          ? _value.purchase
          : purchase // ignore: cast_nullable_to_non_nullable
              as PurchaseHeaderModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as num?,
      lineAmount: freezed == lineAmount
          ? _value.lineAmount
          : lineAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      qtyToReceive: freezed == qtyToReceive
          ? _value.qtyToReceive
          : qtyToReceive // ignore: cast_nullable_to_non_nullable
              as num?,
      qtyReceived: freezed == qtyReceived
          ? _value.qtyReceived
          : qtyReceived // ignore: cast_nullable_to_non_nullable
              as num?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      unitOfMeasure: freezed == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PurchaseHeaderModelCopyWith<$Res>? get purchase {
    if (_value.purchase == null) {
      return null;
    }

    return $PurchaseHeaderModelCopyWith<$Res>(_value.purchase!, (value) {
      return _then(_value.copyWith(purchase: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfMeasureModelCopyWith<$Res>? get unitOfMeasure {
    if (_value.unitOfMeasure == null) {
      return null;
    }

    return $UnitOfMeasureModelCopyWith<$Res>(_value.unitOfMeasure!, (value) {
      return _then(_value.copyWith(unitOfMeasure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseLineModelCopyWith<$Res>
    implements $PurchaseLineModelCopyWith<$Res> {
  factory _$$_PurchaseLineModelCopyWith(_$_PurchaseLineModel value,
          $Res Function(_$_PurchaseLineModel) then) =
      __$$_PurchaseLineModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      PurchaseHeaderModel? purchase,
      String? description,
      ItemModel? item,
      num? qty,
      num? unitCost,
      num? lineAmount,
      num? qtyToReceive,
      num? qtyReceived,
      LocationModel? location,
      UnitOfMeasureModel? unitOfMeasure});

  @override
  $PurchaseHeaderModelCopyWith<$Res>? get purchase;
  @override
  $ItemModelCopyWith<$Res>? get item;
  @override
  $LocationModelCopyWith<$Res>? get location;
  @override
  $UnitOfMeasureModelCopyWith<$Res>? get unitOfMeasure;
}

/// @nodoc
class __$$_PurchaseLineModelCopyWithImpl<$Res>
    extends _$PurchaseLineModelCopyWithImpl<$Res, _$_PurchaseLineModel>
    implements _$$_PurchaseLineModelCopyWith<$Res> {
  __$$_PurchaseLineModelCopyWithImpl(
      _$_PurchaseLineModel _value, $Res Function(_$_PurchaseLineModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? purchase = freezed,
    Object? description = freezed,
    Object? item = freezed,
    Object? qty = freezed,
    Object? unitCost = freezed,
    Object? lineAmount = freezed,
    Object? qtyToReceive = freezed,
    Object? qtyReceived = freezed,
    Object? location = freezed,
    Object? unitOfMeasure = freezed,
  }) {
    return _then(_$_PurchaseLineModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      purchase: freezed == purchase
          ? _value.purchase
          : purchase // ignore: cast_nullable_to_non_nullable
              as PurchaseHeaderModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as num?,
      lineAmount: freezed == lineAmount
          ? _value.lineAmount
          : lineAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      qtyToReceive: freezed == qtyToReceive
          ? _value.qtyToReceive
          : qtyToReceive // ignore: cast_nullable_to_non_nullable
              as num?,
      qtyReceived: freezed == qtyReceived
          ? _value.qtyReceived
          : qtyReceived // ignore: cast_nullable_to_non_nullable
              as num?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      unitOfMeasure: freezed == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseLineModel implements _PurchaseLineModel {
  const _$_PurchaseLineModel(
      {this.id,
      this.purchase,
      this.description,
      this.item,
      this.qty,
      this.unitCost,
      this.lineAmount,
      this.qtyToReceive,
      this.qtyReceived,
      this.location,
      this.unitOfMeasure});

  factory _$_PurchaseLineModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseLineModelFromJson(json);

  @override
  final num? id;
  @override
  final PurchaseHeaderModel? purchase;
  @override
  final String? description;
  @override
  final ItemModel? item;
  @override
  final num? qty;
  @override
  final num? unitCost;
  @override
  final num? lineAmount;
  @override
  final num? qtyToReceive;
  @override
  final num? qtyReceived;
  @override
  final LocationModel? location;
  @override
  final UnitOfMeasureModel? unitOfMeasure;

  @override
  String toString() {
    return 'PurchaseLineModel(id: $id, purchase: $purchase, description: $description, item: $item, qty: $qty, unitCost: $unitCost, lineAmount: $lineAmount, qtyToReceive: $qtyToReceive, qtyReceived: $qtyReceived, location: $location, unitOfMeasure: $unitOfMeasure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseLineModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purchase, purchase) ||
                other.purchase == purchase) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.lineAmount, lineAmount) ||
                other.lineAmount == lineAmount) &&
            (identical(other.qtyToReceive, qtyToReceive) ||
                other.qtyToReceive == qtyToReceive) &&
            (identical(other.qtyReceived, qtyReceived) ||
                other.qtyReceived == qtyReceived) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.unitOfMeasure, unitOfMeasure) ||
                other.unitOfMeasure == unitOfMeasure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      purchase,
      description,
      item,
      qty,
      unitCost,
      lineAmount,
      qtyToReceive,
      qtyReceived,
      location,
      unitOfMeasure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseLineModelCopyWith<_$_PurchaseLineModel> get copyWith =>
      __$$_PurchaseLineModelCopyWithImpl<_$_PurchaseLineModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseLineModelToJson(
      this,
    );
  }
}

abstract class _PurchaseLineModel implements PurchaseLineModel {
  const factory _PurchaseLineModel(
      {final num? id,
      final PurchaseHeaderModel? purchase,
      final String? description,
      final ItemModel? item,
      final num? qty,
      final num? unitCost,
      final num? lineAmount,
      final num? qtyToReceive,
      final num? qtyReceived,
      final LocationModel? location,
      final UnitOfMeasureModel? unitOfMeasure}) = _$_PurchaseLineModel;

  factory _PurchaseLineModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseLineModel.fromJson;

  @override
  num? get id;
  @override
  PurchaseHeaderModel? get purchase;
  @override
  String? get description;
  @override
  ItemModel? get item;
  @override
  num? get qty;
  @override
  num? get unitCost;
  @override
  num? get lineAmount;
  @override
  num? get qtyToReceive;
  @override
  num? get qtyReceived;
  @override
  LocationModel? get location;
  @override
  UnitOfMeasureModel? get unitOfMeasure;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseLineModelCopyWith<_$_PurchaseLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}
