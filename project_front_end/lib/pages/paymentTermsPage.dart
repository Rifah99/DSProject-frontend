import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/paymentTerms/paymentTermsController.dart';
import '../app/paymentTerms/paymentTermsModel.dart';
import '../app/unitOfMeasure/unitOfMeasureController.dart';
import '../app/unitOfMeasure/unitOfMeasureModel.dart';

class PaymentTermsPage extends StatefulWidget {
  const PaymentTermsPage({Key? key}) : super(key: key);

  @override
  State<PaymentTermsPage> createState() => _PaymentTermsPageState();
}

class _PaymentTermsPageState extends State<PaymentTermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaymentTerms'),
      ),
      body: FutureBuilder<Iterable<PaymentTermsModel>>(
        future: Provider.of<PaymentTermsController>(context).getPaymentTerms(),
        builder: (context, snapshot) {
          final paymentterms = snapshot.data ?? [];

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
                            return const EditPaymentTerm(paymentterm: null);
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
                  DataColumn(label: Text('Due Date Calculation')),
                ],
                rows: paymentterms
                    .map(
                      (paymentterm) => DataRow(
                        cells: [
                          DataCell(
                            Text(paymentterm.id.toString()),
                            onDoubleTap: () async {
                              await showDialog(
                                context: context,
                                builder: (context) {
                                  return EditPaymentTerm(
                                    paymentterm: paymentterm,
                                  );
                                },
                              );
                              setState(() {});
                            },
                          ),
                          DataCell(Text(paymentterm.description ?? '')),
                          DataCell(Text(
                              paymentterm.dueDateCalculation.toString() ?? '')),
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

class EditPaymentTerm extends StatefulWidget {
  const EditPaymentTerm({
    Key? key,
    required this.paymentterm,
  }) : super(key: key);

  final PaymentTermsModel? paymentterm;

  @override
  State<EditPaymentTerm> createState() => _EditPaymentTermState();
}

class _EditPaymentTermState extends State<EditPaymentTerm> {
  late PaymentTermsModel? editedPaymentTerm = widget.paymentterm;

  late TextEditingController idController =
      TextEditingController(text: editedPaymentTerm?.id);
  late TextEditingController descriptionController =
      TextEditingController(text: editedPaymentTerm?.description);

  late TextEditingController dueDateCalculationController =
      TextEditingController(
          text: editedPaymentTerm?.dueDateCalculation.toString());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit PaymentTerm'),
      content: FutureBuilder<Iterable<UnitOfMeasureModel>>(
        future:
            Provider.of<UnitOfMeasureController>(context).getUnitOfMeasure(),
        builder: (context, snapshot) {
          final units = snapshot.data?.toList() ?? [];

          return Form(
            onChanged: () => {
              setState(() {
                editedPaymentTerm = editedPaymentTerm?.copyWith(
                      description: descriptionController.text,
                    ) ??
                    PaymentTermsModel(
                      id: idController.text,
                      description: descriptionController.text,
                      dueDateCalculation:
                          int.tryParse(dueDateCalculationController.text),
                    );
              }),
            },
            child: Column(
              children: [
                TextFormField(
                  controller: idController,
                  decoration: const InputDecoration(
                    labelText: 'ID',
                  ),
                ),
                TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                  ),
                ),
                TextFormField(
                  controller: dueDateCalculationController,
                  decoration: const InputDecoration(
                    labelText: 'Due Date Calculation',
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
            await Provider.of<PaymentTermsController>(context, listen: false)
                .deletePaymentTerm(editedPaymentTerm!.id);
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
            await Provider.of<PaymentTermsController>(context, listen: false)
                .addPaymentTerm(editedPaymentTerm!);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

// create a form page to add new paymentterm