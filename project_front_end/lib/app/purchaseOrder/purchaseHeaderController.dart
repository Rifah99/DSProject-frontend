import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'purchaseHeaderModel.dart';

class PurchaseHeaderController {
  final Dio _httpClient;

  PurchaseHeaderController(this._httpClient);

  SharedPreferences? preferences;

  Future<Iterable<PurchaseHeaderModel>> getPurchaseHeader() async {
    preferences = await SharedPreferences.getInstance();
    final token = preferences?.getString('token');
    try {
      final response = await _httpClient.get(
        '/purchaseHeader',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data as List)
          .map(PurchaseHeaderModel.fromJson);
    } on DioError {
      // TODO: handle erronous response
      rethrow;
    }
  }

  // getPurchaseHeaderByOrderId
  Future<PurchaseHeaderModel?> getPurchaseHeaderByOrderId(
      String orderId) async {
    try {
      final response = await _httpClient.get(
        '/purchaseHeader/$orderId',
      );

      return PurchaseHeaderModel.fromJson(
          response.data as Map<String, dynamic>);
    } on DioError {}
    Future<void> addPurchaseHeader(PurchaseHeaderModel item) async {
      try {
        final response = await _httpClient.post(
          '/purchaseHeader',
          data: item.toJson(),
        );
      } on DioError {
        // TODO: handle erronous response
        rethrow;
      }
    }

    return null;
  }
}
