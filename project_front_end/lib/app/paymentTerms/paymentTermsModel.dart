import 'package:freezed_annotation/freezed_annotation.dart';

part 'paymentTermsModel.freezed.dart';
part 'paymentTermsModel.g.dart';

@freezed
class PaymentTermsModel with _$PaymentTermsModel {
  const factory PaymentTermsModel({
    required String id,
    required String description,
    required num? dueDateCalculation,
  }) = _PaymentTermsModel;

  factory PaymentTermsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentTermsModelFromJson(json);
}
