import 'auth/auth_service.dart';
import 'entities/user.dart';

void main() {
  User user1 = User(name: 'Leonardo');
  AuthService auth = AuthService();

  auth.authenticate(user1);

  auth.authenticate(user1);
}