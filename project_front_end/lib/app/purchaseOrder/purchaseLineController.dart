import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'purchaseLineModel.dart';

class PurchaseLineController {
  final Dio _httpClient;

  PurchaseLineController(this._httpClient);

  SharedPreferences? preferences;

  Future<Iterable<PurchaseLineModel>> getPurchaseLine() async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.get(
        '/purchaseLine',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data as List)
          .map(PurchaseLineModel.fromJson);
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }

  // getPurchaseLineByOrderId
  Future<PurchaseLineModel?> getPurchaseLineByOrderId(String orderId) async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');

    try {
      final response = await _httpClient.get(
        '/purchaseLine/$orderId',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return PurchaseLineModel.fromJson(response.data as Map<String, dynamic>);
    } on DioError {}
    Future<void> addPurchaseLine(PurchaseLineModel item) async {
      try {
        final response = await _httpClient.post(
          '/purchaseLine',
          data: item.toJson(),
        );
      } on DioError {
        // TODO: handle erronous response
        rethrow;
      }
    }

    return null;
  }

  // addPurchaseLine
  Future<void> addPurchaseLine(PurchaseLineModel item) async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.post(
        '/purchaseLine',
        data: item.toJson(),
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );
    } on DioError {
      rethrow;
    }
  }
}
