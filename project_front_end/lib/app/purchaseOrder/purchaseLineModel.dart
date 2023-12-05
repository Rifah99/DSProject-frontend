import 'package:freezed_annotation/freezed_annotation.dart';

import '../items/itemModel.dart';
import '../location/locationModel.dart';
import '../unitOfMeasure/unitOfMeasureModel.dart';
import 'purchaseHeaderModel.dart';

part 'purchaseLineModel.freezed.dart';
part 'purchaseLineModel.g.dart';

@freezed
class PurchaseLineModel with _$PurchaseLineModel {
  const factory PurchaseLineModel({
    num? id,
    PurchaseHeaderModel? purchase,
    String? description,
    ItemModel? item,
    num? qty,
    num? unitCost,
    num? lineAmount,
    num? qtyToReceive,
    num? qtyReceived,
    LocationModel? location,
    UnitOfMeasureModel? unitOfMeasure,
  }) = _PurchaseLineModel;

  factory PurchaseLineModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseLineModelFromJson(json);
}
