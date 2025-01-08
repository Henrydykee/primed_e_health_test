import 'package:email_validator/email_validator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:primed_e_health_test/providers/auth_provider.dart';

void main() {
  group('AuthProvider Tests', () {
    late AuthProvider authProvider;

    setUp(() {
      authProvider = AuthProvider();
    });

    test('initial state should be not authenticated and not loading', () {
      expect(authProvider.isAuthenticated, false);
      expect(authProvider.isLoading, false);
    });

    test('login should authenticate with correct credentials', () async {
      final result = await authProvider.login('test@example.com', 'password123');
      expect(result, true);
      expect(authProvider.isAuthenticated, true);
      expect(authProvider.isLoading, false);
    });

    test('login should fail with incorrect credentials', () async {
      final result = await authProvider.login('wrong@email.com', 'wrongpass');
      expect(result, false);
      expect(authProvider.isAuthenticated, false);
      expect(authProvider.isLoading, false);
    });

    test('logout should clear authentication state', () async {
      await authProvider.login('test@example.com', 'password123');
      authProvider.logout();
      expect(authProvider.isAuthenticated, false);
    });
  });

  group('Email Validation Tests', () {
    test('valid email addresses should pass validation', () {
      expect(EmailValidator.validate('test@example.com'), true);
      expect(EmailValidator.validate('user.name@domain.co.uk'), true);
      expect(EmailValidator.validate('user+tag@example.com'), true);
    });

    test('invalid email addresses should fail validation', () {
      expect(EmailValidator.validate('invalid.email'), false);
      expect(EmailValidator.validate('user@'), false);
      expect(EmailValidator.validate('@domain.com'), false);
      expect(EmailValidator.validate(''), false);
    });
  });
}