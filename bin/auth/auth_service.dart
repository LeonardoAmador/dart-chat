import '../entities/user.dart';
import '../handlers/auth_exceptions.dart';
class AuthService {
  Future<void> authenticate(User user) async {
    try {
      print('Authenticating user ${user.uid}...');
      await _simulateAsyncOperation();

      if (await _isAuthenticated(user)) {
        print('User ${user.uid} is already authenticated!');
      } else {
        await _changeAuthenticationStatus(user);
        if (!await _isAuthenticated(user)) {
          throw AuthenticationException('Authentication failed for user ${user.uid}.');
        }
      }

      print('User ${user.uid} authenticated successfully!');
    } catch (e) {
      print('Error during authentication: $e');
      rethrow;
    }
  }

  Future<void> _changeAuthenticationStatus(User user) async {
    user.isAuthenticated = true;
  }

  Future<bool> _isAuthenticated(User user) async {
    try {
      print('Verifying if the user ${user.uid} is already authenticated....');
      await _simulateAsyncOperation();

      return user.isAuthenticated;
    } catch (e) {
      print('Error during isAuthenticated check: $e');
      rethrow;
    }
  }

  Future<void> _simulateAsyncOperation() async {
    await Future.delayed(Duration(seconds: 3));
  }
}