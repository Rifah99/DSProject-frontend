import 'package:freezed_annotation/freezed_annotation.dart';

part 'itemCategoryModel.freezed.dart';
part 'itemCategoryModel.g.dart';

@freezed
class ItemCategoryModel with _$ItemCategoryModel {
  const factory ItemCategoryModel({
    required String id,
    required String description,
    required bool blocked,
  }) = _ItemCategoryModel;

  factory ItemCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ItemCategoryModelFromJson(json);
}
