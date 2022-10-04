import 'package:flutter_crud/models/user_model.dart';

class Users {
  final Map<int, User> _allUsers = {};

  Map<int, User> get all {
    return {..._allUsers};
  }

  int get length {
    return _allUsers.length;
  }

  void addNewUser(User user) {
    _allUsers.putIfAbsent(user.id, () => user);
  }

  User byIndex(int index) {
    return _allUsers.values.elementAt(index);
  }
}
