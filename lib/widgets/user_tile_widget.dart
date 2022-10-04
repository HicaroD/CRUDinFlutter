import 'package:flutter/material.dart';

import '../models/user_model.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text("Age: ${user.age}"),
      trailing: Container(
        width: 80,
        child: Row(
          children: [
            IconButton(
              onPressed: (() => print("Editando")),
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: (() => print("Removendo")),
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
