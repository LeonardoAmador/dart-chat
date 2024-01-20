import 'package:uuid/uuid.dart';
import 'message.dart';

class User {
  final String uid;
  final String name;
  final bool isAuthenticated = false;
  final List<Message> messagesSent = [];

  static List<User> users = [];

  User({ required this.name }): uid = Uuid().v4() {
    users.add(this);
  }
}
