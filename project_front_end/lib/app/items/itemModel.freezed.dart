// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'itemModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  String? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  UnitOfMeasureModel? get baseUnitOfMeasure =>
      throw _privateConstructorUsedError;
  ItemCategoryModel? get itemCategory => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  double? get unitCost => throw _privateConstructorUsedError;
  String? get itemTrackingCode => throw _privateConstructorUsedError;
  double? get reorderQty => throw _privateConstructorUsedError;
  double? get minQty => throw _privateConstructorUsedError;
  double? get unitWeight => throw _privateConstructorUsedError;
  double? get stockQty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res, ItemModel>;
  @useResult
  $Res call(
      {String? id,
      String? description,
      String? type,
      UnitOfMeasureModel? baseUnitOfMeasure,
      ItemCategoryModel? itemCategory,
      bool? blocked,
      double? unitCost,
      String? itemTrackingCode,
      double? reorderQty,
      double? minQty,
      double? unitWeight,
      double? stockQty});

  $UnitOfMeasureModelCopyWith<$Res>? get baseUnitOfMeasure;
  $ItemCategoryModelCopyWith<$Res>? get itemCategory;
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res, $Val extends ItemModel>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? baseUnitOfMeasure = freezed,
    Object? itemCategory = freezed,
    Object? blocked = freezed,
    Object? unitCost = freezed,
    Object? itemTrackingCode = freezed,
    Object? reorderQty = freezed,
    Object? minQty = freezed,
    Object? unitWeight = freezed,
    Object? stockQty = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUnitOfMeasure: freezed == baseUnitOfMeasure
          ? _value.baseUnitOfMeasure
          : baseUnitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureModel?,
      itemCategory: freezed == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as ItemCategoryModel?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      itemTrackingCode: freezed == itemTrackingCode
          ? _value.itemTrackingCode
          : itemTrackingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reorderQty: freezed == reorderQty
          ? _value.reorderQty
          : reorderQty // ignore: cast_nullable_to_non_nullable
              as double?,
      minQty: freezed == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as double?,
      unitWeight: freezed == unitWeight
          ? _value.unitWeight
          : unitWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      stockQty: freezed == stockQty
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfMeasureModelCopyWith<$Res>? get baseUnitOfMeasure {
    if (_value.baseUnitOfMeasure == null) {
      return null;
    }

    return $UnitOfMeasureModelCopyWith<$Res>(_value.baseUnitOfMeasure!,
        (value) {
      return _then(_value.copyWith(baseUnitOfMeasure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCategoryModelCopyWith<$Res>? get itemCategory {
    if (_value.itemCategory == null) {
      return null;
    }

    return $ItemCategoryModelCopyWith<$Res>(_value.itemCategory!, (value) {
      return _then(_value.copyWith(itemCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$$_ItemModelCopyWith(
          _$_ItemModel value, $Res Function(_$_ItemModel) then) =
      __$$_ItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? description,
      String? type,
      UnitOfMeasureModel? baseUnitOfMeasure,
      ItemCategoryModel? itemCategory,
      bool? blocked,
      double? unitCost,
      String? itemTrackingCode,
      double? reorderQty,
      double? minQty,
      double? unitWeight,
      double? stockQty});

  @override
  $UnitOfMeasureModelCopyWith<$Res>? get baseUnitOfMeasure;
  @override
  $ItemCategoryModelCopyWith<$Res>? get itemCategory;
}

/// @nodoc
class __$$_ItemModelCopyWithImpl<$Res>
    extends _$ItemModelCopyWithImpl<$Res, _$_ItemModel>
    implements _$$_ItemModelCopyWith<$Res> {
  __$$_ItemModelCopyWithImpl(
      _$_ItemModel _value, $Res Function(_$_ItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? baseUnitOfMeasure = freezed,
    Object? itemCategory = freezed,
    Object? blocked = freezed,
    Object? unitCost = freezed,
    Object? itemTrackingCode = freezed,
    Object? reorderQty = freezed,
    Object? minQty = freezed,
    Object? unitWeight = freezed,
    Object? stockQty = freezed,
  }) {
    return _then(_$_ItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUnitOfMeasure: freezed == baseUnitOfMeasure
          ? _value.baseUnitOfMeasure
          : baseUnitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureModel?,
      itemCategory: freezed == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as ItemCategoryModel?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      itemTrackingCode: freezed == itemTrackingCode
          ? _value.itemTrackingCode
          : itemTrackingCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reorderQty: freezed == reorderQty
          ? _value.reorderQty
          : reorderQty // ignore: cast_nullable_to_non_nullable
              as double?,
      minQty: freezed == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as double?,
      unitWeight: freezed == unitWeight
          ? _value.unitWeight
          : unitWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      stockQty: freezed == stockQty
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  const _$_ItemModel(
      {this.id,
      this.description,
      this.type,
      this.baseUnitOfMeasure,
      this.itemCategory,
      this.blocked,
      this.unitCost,
      this.itemTrackingCode,
      this.reorderQty,
      this.minQty,
      this.unitWeight,
      this.stockQty});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  final String? id;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final UnitOfMeasureModel? baseUnitOfMeasure;
  @override
  final ItemCategoryModel? itemCategory;
  @override
  final bool? blocked;
  @override
  final double? unitCost;
  @override
  final String? itemTrackingCode;
  @override
  final double? reorderQty;
  @override
  final double? minQty;
  @override
  final double? unitWeight;
  @override
  final double? stockQty;

  @override
  String toString() {
    return 'ItemModel(id: $id, description: $description, type: $type, baseUnitOfMeasure: $baseUnitOfMeasure, itemCategory: $itemCategory, blocked: $blocked, unitCost: $unitCost, itemTrackingCode: $itemTrackingCode, reorderQty: $reorderQty, minQty: $minQty, unitWeight: $unitWeight, stockQty: $stockQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.baseUnitOfMeasure, baseUnitOfMeasure) ||
                other.baseUnitOfMeasure == baseUnitOfMeasure) &&
            (identical(other.itemCategory, itemCategory) ||
                other.itemCategory == itemCategory) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.itemTrackingCode, itemTrackingCode) ||
                other.itemTrackingCode == itemTrackingCode) &&
            (identical(other.reorderQty, reorderQty) ||
                other.reorderQty == reorderQty) &&
            (identical(other.minQty, minQty) || other.minQty == minQty) &&
            (identical(other.unitWeight, unitWeight) ||
                other.unitWeight == unitWeight) &&
            (identical(other.stockQty, stockQty) ||
                other.stockQty == stockQty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      type,
      baseUnitOfMeasure,
      itemCategory,
      blocked,
      unitCost,
      itemTrackingCode,
      reorderQty,
      minQty,
      unitWeight,
      stockQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      __$$_ItemModelCopyWithImpl<_$_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelToJson(
      this,
    );
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {final String? id,
      final String? description,
      final String? type,
      final UnitOfMeasureModel? baseUnitOfMeasure,
      final ItemCategoryModel? itemCategory,
      final bool? blocked,
      final double? unitCost,
      final String? itemTrackingCode,
      final double? reorderQty,
      final double? minQty,
      final double? unitWeight,
      final double? stockQty}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  String? get id;
  @override
  String? get description;
  @override
  String? get type;
  @override
  UnitOfMeasureModel? get baseUnitOfMeasure;
  @override
  ItemCategoryModel? get itemCategory;
  @override
  bool? get blocked;
  @override
  double? get unitCost;
  @override
  String? get itemTrackingCode;
  @override
  double? get reorderQty;
  @override
  double? get minQty;
  @override
  double? get unitWeight;
  @override
  double? get stockQty;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
