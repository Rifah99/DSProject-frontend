import 'package:freezed_annotation/freezed_annotation.dart';

import '../paymentTerms/paymentTermsModel.dart';

part 'vendorModel.freezed.dart';
part 'vendorModel.g.dart';

@freezed
class VendorModel with _$VendorModel {
  const factory VendorModel({
    String? id,
    required String name,
    String? address,
    bool? blocked,
    PaymentTermsModel? paymentTerms,
  }) = _VendorModel;

  factory VendorModel.fromJson(Map<String, dynamic> json) =>
      _$VendorModelFromJson(json);
}
