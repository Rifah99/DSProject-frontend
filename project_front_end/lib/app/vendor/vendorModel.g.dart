// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendorModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VendorModel _$$_VendorModelFromJson(Map<String, dynamic> json) =>
    _$_VendorModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      address: json['address'] as String?,
      blocked: json['blocked'] as bool?,
      paymentTerms: json['paymentTerms'] == null
          ? null
          : PaymentTermsModel.fromJson(
              json['paymentTerms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VendorModelToJson(_$_VendorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'blocked': instance.blocked,
      'paymentTerms': instance.paymentTerms,
    };
