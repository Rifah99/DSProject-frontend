import 'package:freezed_annotation/freezed_annotation.dart';

import '../paymentTerms/paymentTermsModel.dart';
import '../vendor/vendorModel.dart';
import 'purchaseLineModel.dart';

part 'purchaseHeaderModel.freezed.dart';
part 'purchaseHeaderModel.g.dart';

@freezed
class PurchaseHeaderModel with _$PurchaseHeaderModel {
  const factory PurchaseHeaderModel({
    required String orderId,
    DateTime? documentDate,
    DateTime? postingDate,
    DateTime? dueDate,
    required VendorModel? vendor,
    PaymentTermsModel? paymentTerms,
    required String status,
    @Default(<PurchaseLineModel>[]) List<PurchaseLineModel> purchaseLines,
  }) = _PurchaseHeaderModel;

  factory PurchaseHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseHeaderModelFromJson(json);
}
