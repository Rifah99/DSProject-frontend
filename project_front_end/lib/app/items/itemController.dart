import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'itemModel.dart';

class ItemController {
  SharedPreferences? preferences;

  final Dio _httpClient;

  ItemController(this._httpClient);

  Future<Iterable<ItemModel>> getItems() async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');

    try {
      final response = await _httpClient.get(
        '/items',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data as List)
          .map(ItemModel.fromJson);
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }

  Future<void> addItem(ItemModel item) async {
    try {
      final response = await _httpClient.post(
        '/items',
        data: item.toJson(),
      );
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }
}
