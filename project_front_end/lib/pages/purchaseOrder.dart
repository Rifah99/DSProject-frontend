import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/items/itemModel.dart';
import '../app/location/locationModel.dart';
import '../app/purchaseOrder/purchaseHeaderModel.dart';
import '../app/purchaseOrder/purchaseLineController.dart';
import '../app/purchaseOrder/purchaseLineModel.dart';
import '../app/unitOfMeasure/unitOfMeasureModel.dart';

class PurchaseOrderPage extends StatefulWidget {
  const PurchaseOrderPage({Key? key, required this.purchaseHeader})
      : super(key: key);
  final PurchaseHeaderModel purchaseHeader;

  @override
  State<PurchaseOrderPage> createState() => _PurchaseOrderPageState();
}

class _PurchaseOrderPageState extends State<PurchaseOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Order Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('No. : ${widget.purchaseHeader.orderId}'),
            Text('Vendor: ${widget.purchaseHeader.vendor!.name}'),
            Text('Date: ${widget.purchaseHeader.postingDate}'),
            Text('Date: ${widget.purchaseHeader.documentDate}'),
            Text('Date: ${widget.purchaseHeader.dueDate}'),
            Text('Status: ${widget.purchaseHeader.status}'),
            const Divider(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // show a dialog to add new line
                      showDialog(
                        context: context,
                        builder: (context) {
                          return EditLine(
                            header: widget.purchaseHeader,
                          );
                        },
                      );

                      setState(() {});
                    },
                    child: const Text('Add new line'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: const Text('Receive PO'),
                  ),
                ),
              ],
            ),
            DataTable(
              columns: const [
                DataColumn(label: Text('No.')),
                DataColumn(label: Text('Description')),
                DataColumn(label: Text('Quantity')),
                DataColumn(label: Text('Unit Cost')),
                DataColumn(label: Text('Total Cost')),
                DataColumn(label: Text('Quantity to Receive')),
                DataColumn(label: Text('Quantity Received')),
              ],
              rows: [
                for (final line in widget.purchaseHeader.purchaseLines)
                  DataRow(cells: [
                    DataCell(Text(line.id.toString())),
                    DataCell(Text(line.description ?? '')),
                    DataCell(Text(line.qty.toString())),
                    DataCell(Text(line.unitCost.toString())),
                    DataCell(Text(line.lineAmount.toString())),
                    DataCell(Text(line.qtyToReceive.toString())),
                    DataCell(Text(line.qtyReceived.toString())),
                  ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EditLine extends StatefulWidget {
  const EditLine({Key? key, this.line, required this.header}) : super(key: key);

  final PurchaseLineModel? line;
  final PurchaseHeaderModel header;

  @override
  State<EditLine> createState() => _EditLineState();
}

class _EditLineState extends State<EditLine> {
  late PurchaseLineModel? editedLine = widget.line;

  late TextEditingController descriptionController =
      TextEditingController(text: editedLine?.description);
  late TextEditingController itemController =
      TextEditingController(text: editedLine?.item?.id);
  late TextEditingController locationController =
      TextEditingController(text: editedLine?.location?.id.toString());
  late TextEditingController unitOfMeasureController =
      TextEditingController(text: editedLine?.unitOfMeasure?.id.toString());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Item'),
      content: Form(
        onChanged: () {
          setState(() {
            editedLine = editedLine?.copyWith(
                  description: descriptionController.text,
                  item: ItemModel(id: itemController.text),
                  location: LocationModel(
                      id: int.tryParse(locationController.text) ?? 0),
                  unitOfMeasure:
                      UnitOfMeasureModel(id: unitOfMeasureController.text),
                ) ??
                PurchaseLineModel(
                  purchase: widget.header,
                  description: descriptionController.text,
                  item: ItemModel(id: itemController.text),
                  location: LocationModel(
                    id: int.tryParse(locationController.text) ?? 0,
                  ),
                  unitOfMeasure:
                      UnitOfMeasureModel(id: unitOfMeasureController.text),
                );
          });
        },
        child: Column(
          children: [
            TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
            TextFormField(
              controller: itemController,
              decoration: const InputDecoration(
                labelText: 'Item No.',
              ),
            ),
            TextFormField(
              controller: locationController,
              decoration: const InputDecoration(
                labelText: 'Location Id.',
              ),
            ),
            TextFormField(
              controller: unitOfMeasureController,
              decoration: const InputDecoration(
                labelText: 'Unit of Measure',
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            await Provider.of<PurchaseLineController>(context, listen: false)
                .addPurchaseLine(editedLine!);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
