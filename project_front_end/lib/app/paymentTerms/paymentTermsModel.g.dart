// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentTermsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentTermsModel _$$_PaymentTermsModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentTermsModel(
      id: json['id'] as String,
      description: json['description'] as String,
      dueDateCalculation: json['dueDateCalculation'] as num?,
    );

Map<String, dynamic> _$$_PaymentTermsModelToJson(
        _$_PaymentTermsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'dueDateCalculation': instance.dueDateCalculation,
    };
