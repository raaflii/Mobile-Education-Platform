import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_education_platform/features/auth/domain/repositories/firebase_auth_repository.dart';
import 'package:mobile_education_platform/features/auth/domain/entitites/user.dart';
import 'package:mobile_education_platform/features/auth/domain/repositories/auth_repository.dart';

// Repository provider
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return FirebaseAuthRepository();
});

// Current user provider
final currentUserProvider = StreamProvider<User?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges;
});

// Auth state provider
final authStateProvider = Provider<AsyncValue<User?>>((ref) {
  return ref.watch(currentUserProvider);
});

// Check if user is authenticated
final isAuthenticatedProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.when(
    data: (user) => user != null,
    loading: () => false,
    error: (_, __) => false,
  );
});

// Get user role
final userRoleProvider = Provider<UserRole?>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.when(
    data: (user) => user?.role,
    loading: () => null,
    error: (_, __) => null,
  );
});
