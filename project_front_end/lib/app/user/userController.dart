import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'userModel.dart';

class UserController {
  final Dio _httpClient;

  UserController(this._httpClient);

  SharedPreferences? preferences;

  Future<Iterable<UserModel>> getUser() async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.get(
        '/users',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data as List)
          .map(UserModel.fromJson);
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }

  Future<void> addUser(UserModel item) async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.post(
        '/user',
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

  // delete payment term
  Future<void> deleteUser(String id) async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');

    try {
      final response = await _httpClient.delete(
        '/user/$id',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );
    } on DioError {}
  }
}
