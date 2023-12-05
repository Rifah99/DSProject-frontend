// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventoryModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryModel _$InventoryModelFromJson(Map<String, dynamic> json) {
  return _InventoryModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get documentNo => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  DateTime get postingDate => throw _privateConstructorUsedError;
  ItemModel get item => throw _privateConstructorUsedError;
  String? get batchNumber => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  double get qty => throw _privateConstructorUsedError;
  double? get remainingQty => throw _privateConstructorUsedError;
  double? get unitCost => throw _privateConstructorUsedError;
  bool? get open => throw _privateConstructorUsedError;
  UnitOfMeasureModel get unitOfMeasure => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryModelCopyWith<InventoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryModelCopyWith<$Res> {
  factory $InventoryModelCopyWith(
          InventoryModel value, $Res Function(InventoryModel) then) =
      _$InventoryModelCopyWithImpl<$Res, InventoryModel>;
  @useResult
  $Res call(
      {int id,
      String type,
      String documentNo,
      String? description,
      LocationModel location,
      DateTime postingDate,
      ItemModel item,
      String? batchNumber,
      DateTime? expiryDate,
      double qty,
      double? remainingQty,
      double? unitCost,
      bool? open,
      UnitOfMeasureModel unitOfMeasure,
      String? serialNumber});

  $LocationModelCopyWith<$Res> get location;
  $ItemModelCopyWith<$Res> get item;
  $UnitOfMeasureModelCopyWith<$Res> get unitOfMeasure;
}

/// @nodoc
class _$InventoryModelCopyWithImpl<$Res, $Val extends InventoryModel>
    implements $InventoryModelCopyWith<$Res> {
  _$InventoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? documentNo = null,
    Object? description = freezed,
    Object? location = null,
    Object? postingDate = null,
    Object? item = null,
    Object? batchNumber = freezed,
    Object? expiryDate = freezed,
    Object? qty = null,
    Object? remainingQty = freezed,
    Object? unitCost = freezed,
    Object? open = freezed,
    Object? unitOfMeasure = null,
    Object? serialNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documentNo: null == documentNo
          ? _value.documentNo
          : documentNo // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel,
      batchNumber: freezed == batchNumber
          ? _value.batchNumber
          : batchNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      remainingQty: freezed == remainingQty
          ? _value.remainingQty
          : remainingQty // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureModel,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemModelCopyWith<$Res> get item {
    return $ItemModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfMeasureModelCopyWith<$Res> get unitOfMeasure {
    return $UnitOfMeasureModelCopyWith<$Res>(_value.unitOfMeasure, (value) {
      return _then(_value.copyWith(unitOfMeasure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InventoryModelCopyWith<$Res>
    implements $InventoryModelCopyWith<$Res> {
  factory _$$_InventoryModelCopyWith(
          _$_InventoryModel value, $Res Function(_$_InventoryModel) then) =
      __$$_InventoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      String documentNo,
      String? description,
      LocationModel location,
      DateTime postingDate,
      ItemModel item,
      String? batchNumber,
      DateTime? expiryDate,
      double qty,
      double? remainingQty,
      double? unitCost,
      bool? open,
      UnitOfMeasureModel unitOfMeasure,
      String? serialNumber});

  @override
  $LocationModelCopyWith<$Res> get location;
  @override
  $ItemModelCopyWith<$Res> get item;
  @override
  $UnitOfMeasureModelCopyWith<$Res> get unitOfMeasure;
}

/// @nodoc
class __$$_InventoryModelCopyWithImpl<$Res>
    extends _$InventoryModelCopyWithImpl<$Res, _$_InventoryModel>
    implements _$$_InventoryModelCopyWith<$Res> {
  __$$_InventoryModelCopyWithImpl(
      _$_InventoryModel _value, $Res Function(_$_InventoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? documentNo = null,
    Object? description = freezed,
    Object? location = null,
    Object? postingDate = null,
    Object? item = null,
    Object? batchNumber = freezed,
    Object? expiryDate = freezed,
    Object? qty = null,
    Object? remainingQty = freezed,
    Object? unitCost = freezed,
    Object? open = freezed,
    Object? unitOfMeasure = null,
    Object? serialNumber = freezed,
  }) {
    return _then(_$_InventoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documentNo: null == documentNo
          ? _value.documentNo
          : documentNo // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel,
      batchNumber: freezed == batchNumber
          ? _value.batchNumber
          : batchNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      remainingQty: freezed == remainingQty
          ? _value.remainingQty
          : remainingQty // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureModel,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InventoryModel implements _InventoryModel {
  const _$_InventoryModel(
      {required this.id,
      required this.type,
      required this.documentNo,
      this.description,
      required this.location,
      required this.postingDate,
      required this.item,
      this.batchNumber,
      this.expiryDate,
      required this.qty,
      this.remainingQty,
      this.unitCost,
      this.open,
      required this.unitOfMeasure,
      this.serialNumber});

  factory _$_InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryModelFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String documentNo;
  @override
  final String? description;
  @override
  final LocationModel location;
  @override
  final DateTime postingDate;
  @override
  final ItemModel item;
  @override
  final String? batchNumber;
  @override
  final DateTime? expiryDate;
  @override
  final double qty;
  @override
  final double? remainingQty;
  @override
  final double? unitCost;
  @override
  final bool? open;
  @override
  final UnitOfMeasureModel unitOfMeasure;
  @override
  final String? serialNumber;

  @override
  String toString() {
    return 'InventoryModel(id: $id, type: $type, documentNo: $documentNo, description: $description, location: $location, postingDate: $postingDate, item: $item, batchNumber: $batchNumber, expiryDate: $expiryDate, qty: $qty, remainingQty: $remainingQty, unitCost: $unitCost, open: $open, unitOfMeasure: $unitOfMeasure, serialNumber: $serialNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.documentNo, documentNo) ||
                other.documentNo == documentNo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.postingDate, postingDate) ||
                other.postingDate == postingDate) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.batchNumber, batchNumber) ||
                other.batchNumber == batchNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.remainingQty, remainingQty) ||
                other.remainingQty == remainingQty) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.unitOfMeasure, unitOfMeasure) ||
                other.unitOfMeasure == unitOfMeasure) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      documentNo,
      description,
      location,
      postingDate,
      item,
      batchNumber,
      expiryDate,
      qty,
      remainingQty,
      unitCost,
      open,
      unitOfMeasure,
      serialNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryModelCopyWith<_$_InventoryModel> get copyWith =>
      __$$_InventoryModelCopyWithImpl<_$_InventoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryModelToJson(
      this,
    );
  }
}

abstract class _InventoryModel implements InventoryModel {
  const factory _InventoryModel(
      {required final int id,
      required final String type,
      required final String documentNo,
      final String? description,
      required final LocationModel location,
      required final DateTime postingDate,
      required final ItemModel item,
      final String? batchNumber,
      final DateTime? expiryDate,
      required final double qty,
      final double? remainingQty,
      final double? unitCost,
      final bool? open,
      required final UnitOfMeasureModel unitOfMeasure,
      final String? serialNumber}) = _$_InventoryModel;

  factory _InventoryModel.fromJson(Map<String, dynamic> json) =
      _$_InventoryModel.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get documentNo;
  @override
  String? get description;
  @override
  LocationModel get location;
  @override
  DateTime get postingDate;
  @override
  ItemModel get item;
  @override
  String? get batchNumber;
  @override
  DateTime? get expiryDate;
  @override
  double get qty;
  @override
  double? get remainingQty;
  @override
  double? get unitCost;
  @override
  bool? get open;
  @override
  UnitOfMeasureModel get unitOfMeasure;
  @override
  String? get serialNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryModelCopyWith<_$_InventoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
