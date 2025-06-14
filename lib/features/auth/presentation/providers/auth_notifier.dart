import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_education_platform/features/auth/domain/entitites/user.dart';
import 'package:mobile_education_platform/features/auth/domain/failures/auth_failure.dart';
import 'package:mobile_education_platform/features/auth/domain/repositories/auth_repository.dart';
import 'package:mobile_education_platform/features/auth/presentation/providers/auth_provider.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(User user) = _Success;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository) : super(const AuthState.initial());

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();
    
    final result = await _authRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    
    result.fold(
      (failure) => state = AuthState.failure(failure),
      (user) => state = AuthState.success(user),
    );
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String username,
    required UserRole role,
  }) async {
    state = const AuthState.loading();
    
    final result = await _authRepository.signUpWithEmailAndPassword(
      email: email,
      password: password,
      username: username,
      role: role,
    );
    
    result.fold(
      (failure) => state = AuthState.failure(failure),
      (user) => state = AuthState.success(user),
    );
  }

  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    state = const AuthState.loading();
    
    final result = await _authRepository.sendPasswordResetEmail(email: email);
    
    result.fold(
      (failure) => state = AuthState.failure(failure),
      (_) => state = const AuthState.initial(),
    );
  }

  Future<void> signOut() async {
    state = const AuthState.loading();
    
    final result = await _authRepository.signOut();
    
    result.fold(
      (failure) => state = AuthState.failure(failure),
      (_) => state = const AuthState.initial(),
    );
  }

  Future<bool> isUsernameAvailable(String username) async {
    final result = await _authRepository.isUsernameAvailable(username);
    return result.fold(
      (failure) => false,
      (isAvailable) => isAvailable,
    );
  }
}

// Provider for AuthNotifier
final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthNotifier(authRepository);
});