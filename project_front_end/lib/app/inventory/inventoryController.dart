import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'inventoryModel.dart';

class InventoryController {
  final Dio _httpClient;

  InventoryController(this._httpClient);

  SharedPreferences? preferences;

  Future<Iterable<InventoryModel>> getInventory() async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.get(
        '/inventory',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data as List)
          .map(InventoryModel.fromJson);
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }

  Future<void> addInventory(InventoryModel inventory) async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');

    try {
      final response = await _httpClient.post(
        '/inventorys',
        data: inventory.toJson(),
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
