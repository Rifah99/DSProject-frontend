import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/unitOfMeasure/unitOfMeasureController.dart';
import '../app/unitOfMeasure/unitOfMeasureModel.dart';
import '../app/vendor/vendorController.dart';
import '../app/vendor/vendorModel.dart';

class VendorsPage extends StatefulWidget {
  const VendorsPage({Key? key}) : super(key: key);

  @override
  State<VendorsPage> createState() => _VendorsPageState();
}

class _VendorsPageState extends State<VendorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vendors'),
      ),
      body: FutureBuilder<Iterable<VendorModel>>(
        future: Provider.of<VendorController>(context).getVendors(),
        builder: (context, snapshot) {
          final vendors = snapshot.data ?? [];

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
                            return const EditVendor(vendor: null);
                          },
                        );
                        setState(() {});
                      },
                      child: const Text('+ New'),
                    ),
                  ),
                ],
              ),
              DataTable(
                columns: const [
                  DataColumn(label: Text('No.')),
                  DataColumn(label: Text('Description')),
                ],
                rows: vendors
                    .map(
                      (vendor) => DataRow(
                        cells: [
                          DataCell(
                            Text(vendor.id.toString()),
                            onDoubleTap: () async {
                              await showDialog(
                                context: context,
                                builder: (context) {
                                  return EditVendor(vendor: vendor);
                                },
                              );
                              setState(() {});
                            },
                          ),
                          DataCell(Text(vendor.name ?? '')),
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

class EditVendor extends StatefulWidget {
  const EditVendor({
    Key? key,
    required this.vendor,
  }) : super(key: key);

  final VendorModel? vendor;

  @override
  State<EditVendor> createState() => _EditVendorState();
}

class _EditVendorState extends State<EditVendor> {
  late VendorModel? editedVendor = widget.vendor;

  late TextEditingController descriptionController =
      TextEditingController(text: editedVendor?.name);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Vendor'),
      content: FutureBuilder<Iterable<UnitOfMeasureModel>>(
        future:
            Provider.of<UnitOfMeasureController>(context).getUnitOfMeasure(),
        builder: (context, snapshot) {
          final units = snapshot.data?.toList() ?? [];

          return Form(
            onChanged: () => {
              setState(() {
                editedVendor = editedVendor?.copyWith(
                      name: descriptionController.text,
                    ) ??
                    VendorModel(
                      name: descriptionController.text,
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
              ],
            ),
          );
        },
      ),
      actions: [
        TextButton(
          onPressed: () async {
            try {
              await Provider.of<VendorController>(context, listen: false)
                  .deleteVendor(editedVendor!.id!);
            } on DioException catch (exception) {
              await showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: Text(
                        (exception.response?.data['message'] as String) ?? ''),
                  );
                },
              );
            }
            Navigator.of(context).pop();
          },
          child: const Text('Delete'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            await Provider.of<VendorController>(context, listen: false)
                .addVendor(editedVendor!);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

// create a form page to add new vendor