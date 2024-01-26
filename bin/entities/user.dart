// ignore_for_file: unnecessary_getters_setters

import 'package:uuid/uuid.dart';
import 'message.dart';
import '../database/db.dart' as db;

class User {
  late final String _uid;
  late final String _name;
  late bool _isAuthenticated = false;
  final List<Message> messagesSent = [];

  User({ required String name }) : _uid = Uuid().v4(), _name = name {
    db.users.add(this);
  }

  String get uid => _uid;

  String get name => _name;
  set name(String value) {
    _name = value;
  }

  bool get isAuthenticated => _isAuthenticated;
  set isAuthenticated(bool value) {
    _isAuthenticated = value;
  }
}
