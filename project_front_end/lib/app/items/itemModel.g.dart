// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$$_ItemModelFromJson(Map<String, dynamic> json) => _$_ItemModel(
      id: json['id'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      baseUnitOfMeasure: json['baseUnitOfMeasure'] == null
          ? null
          : UnitOfMeasureModel.fromJson(
              json['baseUnitOfMeasure'] as Map<String, dynamic>),
      itemCategory: json['itemCategory'] == null
          ? null
          : ItemCategoryModel.fromJson(
              json['itemCategory'] as Map<String, dynamic>),
      blocked: json['blocked'] as bool?,
      unitCost: (json['unitCost'] as num?)?.toDouble(),
      itemTrackingCode: json['itemTrackingCode'] as String?,
      reorderQty: (json['reorderQty'] as num?)?.toDouble(),
      minQty: (json['minQty'] as num?)?.toDouble(),
      unitWeight: (json['unitWeight'] as num?)?.toDouble(),
      stockQty: (json['stockQty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'type': instance.type,
      'baseUnitOfMeasure': instance.baseUnitOfMeasure,
      'itemCategory': instance.itemCategory,
      'blocked': instance.blocked,
      'unitCost': instance.unitCost,
      'itemTrackingCode': instance.itemTrackingCode,
      'reorderQty': instance.reorderQty,
      'minQty': instance.minQty,
      'unitWeight': instance.unitWeight,
      'stockQty': instance.stockQty,
    };
