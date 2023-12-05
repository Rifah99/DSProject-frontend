// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseLineModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseLineModel _$$_PurchaseLineModelFromJson(Map<String, dynamic> json) =>
    _$_PurchaseLineModel(
      id: json['id'] as num?,
      purchase: json['purchase'] == null
          ? null
          : PurchaseHeaderModel.fromJson(
              json['purchase'] as Map<String, dynamic>),
      description: json['description'] as String?,
      item: json['item'] == null
          ? null
          : ItemModel.fromJson(json['item'] as Map<String, dynamic>),
      qty: json['qty'] as num?,
      unitCost: json['unitCost'] as num?,
      lineAmount: json['lineAmount'] as num?,
      qtyToReceive: json['qtyToReceive'] as num?,
      qtyReceived: json['qtyReceived'] as num?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      unitOfMeasure: json['unitOfMeasure'] == null
          ? null
          : UnitOfMeasureModel.fromJson(
              json['unitOfMeasure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PurchaseLineModelToJson(
        _$_PurchaseLineModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purchase': instance.purchase,
      'description': instance.description,
      'item': instance.item,
      'qty': instance.qty,
      'unitCost': instance.unitCost,
      'lineAmount': instance.lineAmount,
      'qtyToReceive': instance.qtyToReceive,
      'qtyReceived': instance.qtyReceived,
      'location': instance.location,
      'unitOfMeasure': instance.unitOfMeasure,
    };
