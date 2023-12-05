import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/items/itemController.dart';
import '../app/items/itemModel.dart';
import '../app/unitOfMeasure/unitOfMeasureController.dart';
import '../app/unitOfMeasure/unitOfMeasureModel.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items'),
      ),
      body: FutureBuilder<Iterable<ItemModel>>(
        future: Provider.of<ItemController>(context).getItems(),
        builder: (context, snapshot) {
          final items = snapshot.data ?? [];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (context) {
                            return const EditItem(item: null);
                          },
                        );
                        setState(() {});
                      },
                      child: const Text('Add Item'),
                    ),
                  ),
                ],
              ),
              DataTable(
                columns: const [
                  DataColumn(label: Text('No.')),
                  DataColumn(label: Text('Description')),
                  DataColumn(label: Text('Item Category')),
                  DataColumn(label: Text('Base Unit of Measure')),
                  DataColumn(label: Text('Unit Cost')),
                  DataColumn(label: Text('Stock in Hand')),
                ],
                rows: items
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(Text(item.id ?? ''), onDoubleTap: () async {
                            await showDialog(
                              context: context,
                              builder: (context) {
                                return EditItem(item: item);
                              },
                            );
                            setState(() {});
                          }),
                          DataCell(Text(item.description ?? '')),
                          DataCell(Text(item.itemCategory?.description ?? '')),
                          DataCell(Text(item.baseUnitOfMeasure!.id ?? '')),
                          DataCell(Text(item.unitCost.toString())),
                          DataCell(Text(item.stockQty.toString())),
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

class EditItem extends StatefulWidget {
  const EditItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemModel? item;

  @override
  State<EditItem> createState() => _EditItemState();
}

class _EditItemState extends State<EditItem> {
  late ItemModel? editedItem = widget.item;

  late TextEditingController descriptionController =
      TextEditingController(text: editedItem?.description);
  late TextEditingController typeController =
      TextEditingController(text: editedItem?.type);
  late TextEditingController baseUnitController =
      TextEditingController(text: editedItem?.baseUnitOfMeasure?.id);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Item'),
      content: FutureBuilder<Iterable<UnitOfMeasureModel>>(
        future:
            Provider.of<UnitOfMeasureController>(context).getUnitOfMeasure(),
        builder: (context, snapshot) {
          final units = snapshot.data?.toList() ?? [];

          return Form(
            onChanged: () => {
              setState(() {
                editedItem = editedItem?.copyWith(
                      description: descriptionController.text,
                      type: typeController.text,
                      baseUnitOfMeasure:
                          editedItem!.baseUnitOfMeasure?.copyWith(
                        id: baseUnitController.text,
                      ),
                    ) ??
                    ItemModel(
                      description: descriptionController.text,
                      type: typeController.text,
                      baseUnitOfMeasure: UnitOfMeasureModel(
                        id: baseUnitController.text,
                        description: '',
                      ),
                    );
              }),
            },
            child: Column(
              children: [
                TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                  ),
                ),
                // DropdownButtonFormField(
                //   value: editedItem?.type,
                //   items: const [
                //     DropdownMenuItem(
                //       value: 'Inventory',
                //       child: Text('Inventory'),
                //     ),
                //     DropdownMenuItem(
                //       value: 'Non-Inventory',
                //       child: Text('Non-Inventory'),
                //     ),
                //     DropdownMenuItem(
                //       value: 'Service',
                //       child: Text('Service'),
                //     ),
                //   ],
                //   onChanged: (value) {
                //     setState(() {
                //       editedItem = editedItem?.copyWith(type: value.toString());
                //     });
                //   },
                //   decoration: const InputDecoration(
                //     labelText: 'Type',
                //   ),
                // ),
                // FutureBuilder<Iterable<UnitOfMeasureModel>>(
                //   future: Provider.of<UnitOfMeasureController>(context)
                //       .getUnitOfMeasure(),
                //   builder: (context, snapshot) {
                //     final units = snapshot.data?.toList() ?? [];

                //     return DropdownButtonFormField<String>(
                //       value: editedItem?.baseUnitOfMeasure.id,
                //       items: [
                //         for (final unit in units)
                //           DropdownMenuItem(
                //             value: unit.id,
                //             child: Text(unit.description),
                //           ),
                //       ],
                //       onChanged: (value) {
                //         if (value != null) {
                //           setState(() {
                //             editedItem = editedItem?.copyWith(
                //               baseUnitOfMeasure: units
                //                   .firstWhere((element) => element.id == value),
                //             );
                //           });
                //         }
                //       },
                //       decoration: const InputDecoration(
                //         labelText: 'Base Unit of Measure',
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          );
        },
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
            await Provider.of<ItemController>(context, listen: false)
                .addItem(editedItem!);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

// create a form page to add new item