import 'package:freezed_annotation/freezed_annotation.dart';

import '../unitOfMeasure/unitOfMeasureModel.dart';
import 'itemCategoryModel.dart';

part 'itemModel.freezed.dart';
part 'itemModel.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    String? id,
    String? description,
    String? type,
    UnitOfMeasureModel? baseUnitOfMeasure,
    ItemCategoryModel? itemCategory,
    bool? blocked,
    double? unitCost,
    String? itemTrackingCode,
    double? reorderQty,
    double? minQty,
    double? unitWeight,
    double? stockQty,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
