import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError([String? message]) = _ServerError;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() = _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.weakPassword() = _WeakPassword;
  const factory AuthFailure.invalidEmail() = _InvalidEmail;
  const factory AuthFailure.userDisabled() = _UserDisabled;
  const factory AuthFailure.tooManyRequests() = _TooManyRequests;
  const factory AuthFailure.networkError() = _NetworkError;
  const factory AuthFailure.unknownError([String? message]) = _UnknownError;
  const factory AuthFailure.usernameAlreadyTaken() = _UsernameAlreadyTaken;
}