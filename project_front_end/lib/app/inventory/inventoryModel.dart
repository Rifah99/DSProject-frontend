import 'package:freezed_annotation/freezed_annotation.dart';

import '../items/itemModel.dart';
import '../location/locationModel.dart';
import '../unitOfMeasure/unitOfMeasureModel.dart';

part 'inventoryModel.freezed.dart';
part 'inventoryModel.g.dart';

@freezed
class InventoryModel with _$InventoryModel {
  const factory InventoryModel({
    required int id,
    required String type,
    required String documentNo,
    String? description,
    required LocationModel location,
    required DateTime postingDate,
    required ItemModel item,
    String? batchNumber,
    DateTime? expiryDate,
    required double qty,
    double? remainingQty,
    double? unitCost,
    bool? open,
    required UnitOfMeasureModel unitOfMeasure,
    String? serialNumber,
  }) = _InventoryModel;

  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);
}
