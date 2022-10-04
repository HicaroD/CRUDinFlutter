import 'package:flutter/material.dart';
import 'package:flutter_crud/routes/routes.dart';
import 'package:flutter_crud/widgets/user_tile_widget.dart';

import '../data/users.dart';
import '../models/user_model.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final Users users = Users();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usuários"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.USER_ADD_FORM);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) => UserTile(
              user: users.byIndex(index),
            )),
      ),
    );
  }
}
