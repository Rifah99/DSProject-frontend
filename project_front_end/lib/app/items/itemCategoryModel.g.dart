// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemCategoryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemCategoryModel _$$_ItemCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_ItemCategoryModel(
      id: json['id'] as String,
      description: json['description'] as String,
      blocked: json['blocked'] as bool,
    );

Map<String, dynamic> _$$_ItemCategoryModelToJson(
        _$_ItemCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'blocked': instance.blocked,
    };
