// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseHeaderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseHeaderModel _$$_PurchaseHeaderModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseHeaderModel(
      orderId: json['orderId'] as String,
      documentDate: json['documentDate'] == null
          ? null
          : DateTime.parse(json['documentDate'] as String),
      postingDate: json['postingDate'] == null
          ? null
          : DateTime.parse(json['postingDate'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      vendor: json['vendor'] == null
          ? null
          : VendorModel.fromJson(json['vendor'] as Map<String, dynamic>),
      paymentTerms: json['paymentTerms'] == null
          ? null
          : PaymentTermsModel.fromJson(
              json['paymentTerms'] as Map<String, dynamic>),
      status: json['status'] as String,
      purchaseLines: (json['purchaseLines'] as List<dynamic>?)
              ?.map(
                  (e) => PurchaseLineModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PurchaseLineModel>[],
    );

Map<String, dynamic> _$$_PurchaseHeaderModelToJson(
        _$_PurchaseHeaderModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'documentDate': instance.documentDate?.toIso8601String(),
      'postingDate': instance.postingDate?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'vendor': instance.vendor,
      'paymentTerms': instance.paymentTerms,
      'status': instance.status,
      'purchaseLines': instance.purchaseLines,
    };
