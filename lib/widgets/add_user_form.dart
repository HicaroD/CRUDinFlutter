import 'dart:math';

import 'package:flutter/material.dart';

import '../models/user_model.dart';

class AddUserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, dynamic> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar usuário"),
        actions: [
          IconButton(
            onPressed: () {
              _form.currentState?.save();
              User newUser = User(
                  id: Random().nextInt(10000),
                  name: _formData["Name"] as String,
                  age: int.parse(_formData["Age"]));

              Navigator.of(context).pop(newUser);
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Name"),
                onSaved: ((newValue) => _formData["Name"] = newValue),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Age"),
                onSaved: ((newValue) => _formData["Age"] = newValue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
