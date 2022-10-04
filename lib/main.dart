import 'package:flutter/material.dart';
import 'package:flutter_crud/routes/routes.dart';
import 'package:flutter_crud/widgets/add_user_form.dart';
import 'package:flutter_crud/widgets/user_list_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Routes.HOME: (_) => const UserList(),
        Routes.USER_ADD_FORM: (_) => AddUserForm(),
      },
    );
  }
}
