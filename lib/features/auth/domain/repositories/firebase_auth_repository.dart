import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobile_education_platform/features/auth/domain/entitites/user.dart';
import '../../domain/failures/auth_failure.dart';
import '../../domain/repositories/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    FirebaseFirestore? firestore,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
       _googleSignIn = googleSignIn ?? GoogleSignIn(),
       _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (result.user == null) {
        return const Left(AuthFailure.userNotFound());
      }

      final userDoc = await _firestore
          .collection('users')
          .doc(result.user!.uid)
          .get();

      if (!userDoc.exists) {
        return const Left(AuthFailure.userNotFound());
      }

      final userData = userDoc.data()!;
      final user = User.fromJson({'id': result.user!.uid, ...userData});

      return Right(user);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Left(_mapFirebaseAuthException(e));
    } catch (e) {
      return Left(AuthFailure.unknownError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserRole role,
  }) async {
    try {
      final usernameCheck = await isUsernameAvailable(username);
      if (usernameCheck.isLeft()) {
        return usernameCheck.fold(
          (failure) => Left(failure),
          (isAvailable) => const Left(AuthFailure.usernameAlreadyTaken()),
        );
      }

      final isAvailable = usernameCheck.getOrElse(() => false);
      if (!isAvailable) {
        return const Left(AuthFailure.usernameAlreadyTaken());
      }

      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (result.user == null) {
        return const Left(AuthFailure.serverError('Failed to create user'));
      }

      final now = DateTime.now();
      final userData = {
        'email': email,
        'username': username,
        'role': role.name,
        'displayName': username,
        'isActive': true,
        'createdAt': now.toIso8601String(),
        'updatedAt': now.toIso8601String(),
      };

      await _firestore.collection('users').doc(result.user!.uid).set(userData);

      final user = User.fromJson({
        'id': result.user!.uid,
        ...userData,
        'createdAt': now.toIso8601String(),
        'updatedAt': now.toIso8601String(),
      });

      return Right(user);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Left(_mapFirebaseAuthException(e));
    } catch (e) {
      return Left(AuthFailure.unknownError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return const Left(
          AuthFailure.unknownError('Google sign in was cancelled'),
        );
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );

      if (userCredential.user == null) {
        return const Left(
          AuthFailure.unknownError('Failed to sign in with Google'),
        );
      }

      final firebaseUser = userCredential.user!;

      final userDoc = await _firestore
          .collection('users')
          .doc(firebaseUser.uid)
          .get();

      if (userDoc.exists) {
        final userData = userDoc.data()!;
        final user = User.fromJson({'id': firebaseUser.uid, ...userData});
        return Right(user);
      } else {
        final now = DateTime.now();

        String baseUsername =
            firebaseUser.displayName ??
            firebaseUser.email?.split('@').first ??
            'user';

        String uniqueUsername = await _generateUniqueUsername(baseUsername);

        final userData = {
          'email': firebaseUser.email ?? '',
          'username': uniqueUsername,
          'role': UserRole.student.name,
          'displayName': firebaseUser.displayName ?? uniqueUsername,
          'profileImageUrl': firebaseUser.photoURL,
          'isActive': true,
          'createdAt': now.toIso8601String(),
          'updatedAt': now.toIso8601String(),
        };

        await _firestore
            .collection('users')
            .doc(firebaseUser.uid)
            .set(userData);

        final user = User.fromJson({'id': firebaseUser.uid, ...userData});

        return Right(user);
      }
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Left(_mapFirebaseAuthException(e));
    } catch (e) {
      return Left(AuthFailure.unknownError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required String email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const Right(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Left(_mapFirebaseAuthException(e));
    } catch (e) {
      return Left(AuthFailure.unknownError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
      return const Right(unit);
    } catch (e) {
      return Left(AuthFailure.unknownError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, User?>> getCurrentUser() async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return const Right(null);
      }

      final userDoc = await _firestore
          .collection('users')
          .doc(currentUser.uid)
          .get();

      if (!userDoc.exists) {
        return const Right(null);
      }

      final userData = userDoc.data()!;
      final user = User.fromJson({'id': currentUser.uid, ...userData});

      return Right(user);
    } catch (e) {
      return Left(AuthFailure.unknownError(e.toString()));
    }
  }

  @override
  Stream<User?> get authStateChanges {
    return _firebaseAuth.authStateChanges().asyncMap((firebaseUser) async {
      if (firebaseUser == null) return null;

      try {
        final userDoc = await _firestore
            .collection('users')
            .doc(firebaseUser.uid)
            .get();

        if (!userDoc.exists) return null;

        final userData = userDoc.data()!;
        return User.fromJson({'id': firebaseUser.uid, ...userData});
      } catch (e) {
        return null;
      }
    });
  }

  @override
  Future<Either<AuthFailure, bool>> isUsernameAvailable(String username) async {
    try {
      final query = await _firestore
          .collection('users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get();

      return Right(query.docs.isEmpty);
    } catch (e) {
      return Left(AuthFailure.unknownError(e.toString()));
    }
  }

  // Helper method
  Future<String> _generateUniqueUsername(String baseUsername) async {
    String username = baseUsername.toLowerCase().replaceAll(
      RegExp(r'[^a-z0-9_]'),
      '',
    );

    if (username.isEmpty) {
      username = 'user';
    }

    final isAvailable = await isUsernameAvailable(username);
    if (isAvailable.getOrElse(() => false)) {
      return username;
    }

    int counter = 1;
    String uniqueUsername;
    do {
      uniqueUsername = '${username}_$counter';
      final available = await isUsernameAvailable(uniqueUsername);
      if (available.getOrElse(() => false)) {
        return uniqueUsername;
      }
      counter++;
    } while (counter < 10000);

    return '${username}_${DateTime.now().millisecondsSinceEpoch}';
  }

  AuthFailure _mapFirebaseAuthException(firebase_auth.FirebaseAuthException e) {
    switch (e.code) {
      case 'email-already-in-use':
        return const AuthFailure.emailAlreadyInUse();
      case 'invalid-email':
        return const AuthFailure.invalidEmail();
      case 'weak-password':
        return const AuthFailure.weakPassword();
      case 'user-not-found':
        return const AuthFailure.userNotFound();
      case 'wrong-password':
        return const AuthFailure.invalidEmailAndPasswordCombination();
      case 'user-disabled':
        return const AuthFailure.userDisabled();
      case 'too-many-requests':
        return const AuthFailure.tooManyRequests();
      case 'network-request-failed':
        return const AuthFailure.networkError();
      default:
        return AuthFailure.serverError(e.message);
    }
  }
}
