import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'inventoryPage.dart';
import 'itemsPage.dart';
import 'locationPage.dart';
import 'loginPage.dart';
import 'paymentTermsPage.dart';
import 'purchaseOrderList.dart';
import 'vendorsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Center(child: Text('Inventory Management System')),
            ),
            ListTile(
              title: const Text('Items'),
              onTap: () {
                // navigate to dashboard page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemsPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Locations'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LocationsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Vendor'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VendorsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Payment Terms'),
              onTap: () {
                // navigate to dashboard page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentTermsPage(),
                  ),
                );
              },
            ),

            // add a divider
            const Divider(),
            ListTile(
              title: const Text('Item Ledger'),
              onTap: () {
                // navigate to dashboard page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InventoryPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Purchase Order'),
              onTap: () {
                // navigate to dashboard page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PurchaseOrderListPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Bills'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Customer'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Sales Order'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Sales Invoices'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                logout();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> logout() async {
  SharedPreferences? preferences;
  preferences = await SharedPreferences.getInstance();
  preferences.setString('token', '');
}
