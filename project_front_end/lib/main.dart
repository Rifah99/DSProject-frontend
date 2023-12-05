import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/inventory/inventoryController.dart';
import 'app/items/itemController.dart';
import 'app/location/locationController.dart';
import 'app/paymentTerms/paymentTermsController.dart';
import 'app/purchaseOrder/purchaseHeaderController.dart';
import 'app/purchaseOrder/purchaseLineController.dart';
import 'app/unitOfMeasure/unitOfMeasureController.dart';
import 'app/user/userController.dart';
import 'app/vendor/vendorController.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _httpClient =
      Dio(BaseOptions(baseUrl: 'http://localhost:8081/api/v1/'));

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: _httpClient),
        Provider(
          create: (context) {
            return ItemController(Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return PaymentTermsController(Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return VendorController(Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return InventoryController(Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return UnitOfMeasureController(Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return PurchaseHeaderController(
                Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return PurchaseLineController(Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return LocationController(Provider.of(context, listen: false));
          },
        ),
        Provider(
          create: (context) {
            return UserController(Provider.of(context, listen: false));
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(builder: (context) {
          return const LoginPage();
        }),
      ),
    );
  }
}
