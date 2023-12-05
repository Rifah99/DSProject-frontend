// create a stateful widget called InventoryPage

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/inventory/inventoryController.dart';
import '../app/inventory/inventoryModel.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory Page'),
      ),
      body: FutureBuilder<Iterable<InventoryModel>>(
        future: Provider.of<InventoryController>(context).getInventory(),
        builder: (context, snapshot) {
          final entries = snapshot.data ?? [];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // add new entry button
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () async {},
                      child: const Text('Adjust Inventory'),
                    ),
                  ),
                ],
              ),

              //

              const Divider(),
              DataTable(
                columns: const [
                  DataColumn(label: Text('No.')),
                  DataColumn(label: Text('Description')),
                  DataColumn(label: Text('Unit Cost')),
                  DataColumn(label: Text('Quantity')),
                  DataColumn(label: Text('Remaining Quantity')),
                ],
                rows: entries
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(Text(item.id.toString())),
                          DataCell(Text(item.description.toString())),
                          DataCell(Text(item.unitCost.toString())),
                          DataCell(Text(item.qty.toString())),
                          DataCell(Text(item.remainingQty.toString())),
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
