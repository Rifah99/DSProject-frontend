import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/purchaseOrder/purchaseHeaderController.dart';
import '../app/purchaseOrder/purchaseHeaderModel.dart';
import 'purchaseOrder.dart';

class PurchaseOrderListPage extends StatefulWidget {
  const PurchaseOrderListPage({Key? key}) : super(key: key);

  @override
  State<PurchaseOrderListPage> createState() => _PurchaseOrderListPageState();
}

class _PurchaseOrderListPageState extends State<PurchaseOrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Order List'),
      ),
      body: FutureBuilder<Iterable<PurchaseHeaderModel>>(
        future:
            Provider.of<PurchaseHeaderController>(context).getPurchaseHeader(),
        builder: (context, snapshot) {
          final purchaseOrders = snapshot.data ?? [];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () async {
                        // await showDialog(
                        //   context: context,
                        //   builder: (context) {
                        //     return const EditPurchaseOrder(purchaseOrder: null);
                        //   },
                        // );
                        // setState(() {});
                      },
                      child: const Text('Add Purchase Order'),
                    ),
                  ),
                ],
              ),
              DataTable(
                columns: const [
                  DataColumn(label: Text('No.')),
                  DataColumn(label: Text('Vendor')),
                  DataColumn(label: Text('Payment Terms')),
                  DataColumn(label: Text('Posting Date')),
                  // DataColumn(label: Text('Total Amount')),
                  DataColumn(label: Text('Status')),
                ],
                rows: purchaseOrders
                    .map(
                      (purchaseOrder) => DataRow(
                        cells: [
                          DataCell(
                            Text(purchaseOrder.orderId),
                            onDoubleTap: () async {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PurchaseOrderPage(
                                  purchaseHeader: purchaseOrder,
                                ),
                              ));

                              setState(() {});
                            },
                          ),
                          DataCell(Text(purchaseOrder.vendor!.name)),
                          DataCell(
                              Text(purchaseOrder.paymentTerms!.description)),
                          DataCell(Text(purchaseOrder.postingDate.toString())),
                          // DataCell(Text(purchaseOrder..toString())),
                          DataCell(Text(purchaseOrder.status.toString())),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
