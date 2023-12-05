import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/unitOfMeasure/unitOfMeasureController.dart';
import '../app/unitOfMeasure/unitOfMeasureModel.dart';
import '../app/user/userController.dart';
import '../app/user/userModel.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: FutureBuilder<Iterable<UserModel>>(
        future: Provider.of<UserController>(context).getUser(),
        builder: (context, snapshot) {
          final user = snapshot.data ?? [];

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
                            return const EditUser(user: null);
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
                  DataColumn(label: Text('Username')),
                  DataColumn(label: Text('Due Date Calculation')),
                ],
                rows: user
                    .map(
                      (user) => DataRow(
                        cells: [
                          DataCell(
                            Text(user.username.toString()),
                            onDoubleTap: () async {
                              await showDialog(
                                context: context,
                                builder: (context) {
                                  return EditUser(
                                    user: user,
                                  );
                                },
                              );
                              setState(() {});
                            },
                          ),
                          DataCell(Text(user.email ?? '')),
                          DataCell(
                            Text(user.password ?? ''),
                          ),
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

class EditUser extends StatefulWidget {
  const EditUser({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel? user;

  @override
  State<EditUser> createState() => _EditUsertate();
}

class _EditUsertate extends State<EditUser> {
  late UserModel? editedUser = widget.user;

  late TextEditingController userNameController =
      TextEditingController(text: editedUser?.username);
  late TextEditingController emailController =
      TextEditingController(text: editedUser?.email);

  late TextEditingController passwordController =
      TextEditingController(text: editedUser?.password);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit User'),
      content: FutureBuilder<Iterable<UnitOfMeasureModel>>(
        future:
            Provider.of<UnitOfMeasureController>(context).getUnitOfMeasure(),
        builder: (context, snapshot) {
          final units = snapshot.data?.toList() ?? [];

          return Form(
            onChanged: () => {
              setState(() {
                editedUser = editedUser?.copyWith(
                      username: emailController.text,
                    ) ??
                    UserModel(
                      username: userNameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      role: 'user',
                    );
              }),
            },
            child: Column(
              children: [
                TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    labelText: 'ID',
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  controller: passwordController,
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
            await Provider.of<UserController>(context, listen: false)
                .deleteUser(editedUser!.email);
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
            await Provider.of<UserController>(context, listen: false)
                .addUser(editedUser!);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

// create a form page to add new user