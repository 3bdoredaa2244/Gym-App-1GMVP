import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

class AuthRepository {
  final AuthService _authService = AuthService();

  Future<User?> signUp(String email, String password) {
    return _authService.signUp(email, password);
  }

  Future<User?> login(String email, String password) {
    return _authService.login(email, password);
  }

  Future<void> logout() {
    return _authService.logout();
  }

  User? getCurrentUser() {
    return _authService.getCurrentUser();
  }
}