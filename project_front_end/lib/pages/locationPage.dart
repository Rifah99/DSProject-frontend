import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/location/locationController.dart';
import '../app/location/locationModel.dart';
import '../app/unitOfMeasure/unitOfMeasureController.dart';
import '../app/unitOfMeasure/unitOfMeasureModel.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({Key? key}) : super(key: key);

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: FutureBuilder<Iterable<LocationModel>>(
        future: Provider.of<LocationController>(context).getLocations(),
        builder: (context, snapshot) {
          final locations = snapshot.data ?? [];

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
                            return const EditLocation(location: null);
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
                rows: locations
                    .map(
                      (location) => DataRow(
                        cells: [
                          DataCell(
                            Text(location.id.toString()),
                            onDoubleTap: () async {
                              await showDialog(
                                context: context,
                                builder: (context) {
                                  return EditLocation(location: location);
                                },
                              );
                              setState(() {});
                            },
                          ),
                          DataCell(Text(location.name ?? '')),
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

class EditLocation extends StatefulWidget {
  const EditLocation({
    Key? key,
    required this.location,
  }) : super(key: key);

  final LocationModel? location;

  @override
  State<EditLocation> createState() => _EditLocationState();
}

class _EditLocationState extends State<EditLocation> {
  late LocationModel? editedLocation = widget.location;

  late TextEditingController descriptionController =
      TextEditingController(text: editedLocation?.name);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Location'),
      content: FutureBuilder<Iterable<UnitOfMeasureModel>>(
        future:
            Provider.of<UnitOfMeasureController>(context).getUnitOfMeasure(),
        builder: (context, snapshot) {
          final units = snapshot.data?.toList() ?? [];

          return Form(
            onChanged: () => {
              setState(() {
                editedLocation = editedLocation?.copyWith(
                      name: descriptionController.text,
                    ) ??
                    LocationModel(
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
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            await Provider.of<LocationController>(context, listen: false)
                .addLocation(editedLocation!);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

// create a form page to add new location