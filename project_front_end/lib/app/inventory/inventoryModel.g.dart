// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventoryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryModel _$$_InventoryModelFromJson(Map<String, dynamic> json) =>
    _$_InventoryModel(
      id: json['id'] as int,
      type: json['type'] as String,
      documentNo: json['documentNo'] as String,
      description: json['description'] as String?,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      postingDate: DateTime.parse(json['postingDate'] as String),
      item: ItemModel.fromJson(json['item'] as Map<String, dynamic>),
      batchNumber: json['batchNumber'] as String?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      qty: (json['qty'] as num).toDouble(),
      remainingQty: (json['remainingQty'] as num?)?.toDouble(),
      unitCost: (json['unitCost'] as num?)?.toDouble(),
      open: json['open'] as bool?,
      unitOfMeasure: UnitOfMeasureModel.fromJson(
          json['unitOfMeasure'] as Map<String, dynamic>),
      serialNumber: json['serialNumber'] as String?,
    );

Map<String, dynamic> _$$_InventoryModelToJson(_$_InventoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'documentNo': instance.documentNo,
      'description': instance.description,
      'location': instance.location,
      'postingDate': instance.postingDate.toIso8601String(),
      'item': instance.item,
      'batchNumber': instance.batchNumber,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'qty': instance.qty,
      'remainingQty': instance.remainingQty,
      'unitCost': instance.unitCost,
      'open': instance.open,
      'unitOfMeasure': instance.unitOfMeasure,
      'serialNumber': instance.serialNumber,
    };
