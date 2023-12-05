import 'package:freezed_annotation/freezed_annotation.dart';

part 'unitOfMeasureModel.freezed.dart';
part 'unitOfMeasureModel.g.dart';

@freezed
class UnitOfMeasureModel with _$UnitOfMeasureModel {
  const factory UnitOfMeasureModel({
    required String id,
    String? description,
  }) = _UnitOfMeasureModel;

  factory UnitOfMeasureModel.fromJson(Map<String, dynamic> json) =>
      _$UnitOfMeasureModelFromJson(json);
}
