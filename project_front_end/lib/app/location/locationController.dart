import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'locationModel.dart';

class LocationController {
  final Dio _httpClient;

  LocationController(this._httpClient);

  SharedPreferences? preferences;

  Future<Iterable<LocationModel>> getLocations() async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.get(
        '/locations',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data as List)
          .map(LocationModel.fromJson);
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }

  Future<void> addLocation(LocationModel item) async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.post(
        '/location',
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
