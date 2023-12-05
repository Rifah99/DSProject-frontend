import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'unitOfMeasureModel.dart';

class UnitOfMeasureController {
  final Dio _httpClient;

  UnitOfMeasureController(this._httpClient);

  SharedPreferences? preferences;

  Future<Iterable<UnitOfMeasureModel>> getUnitOfMeasure() async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.get(
        '/unitOfMeasures',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data as List)
          .map(UnitOfMeasureModel.fromJson);
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }

  Future<void> addUnitOfMeasure(UnitOfMeasureModel item) async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');

    try {
      final response = await _httpClient.post(
        '/unitOfMeasure',
        data: item.toJson(),
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }
}
