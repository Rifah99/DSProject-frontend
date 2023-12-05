import 'package:freezed_annotation/freezed_annotation.dart';

part 'locationModel.freezed.dart';
part 'locationModel.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    int? id,
    String? name,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
