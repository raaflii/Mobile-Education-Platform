import 'package:dartz/dartz.dart';
import 'package:mobile_education_platform/features/auth/domain/entitites/user.dart';
import 'package:mobile_education_platform/features/auth/domain/failures/auth_failure.dart';

abstract class AuthRepository {
  // Authentication methods
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserRole role,
  });

  Future<Either<AuthFailure, User>> signInWithGoogle();
  
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required String email,
  });
  
  Future<Either<AuthFailure, Unit>> signOut();
  
  // User data methods
  Future<Either<AuthFailure, User?>> getCurrentUser();
  Stream<User?> get authStateChanges;
  
  // Username validation
  Future<Either<AuthFailure, bool>> isUsernameAvailable(String username);
}