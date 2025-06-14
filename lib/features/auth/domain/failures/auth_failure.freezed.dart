// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
    AuthFailure value,
    $Res Function(AuthFailure) then,
  ) = _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
    _$ServerErrorImpl value,
    $Res Function(_$ServerErrorImpl) then,
  ) = __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
    _$ServerErrorImpl _value,
    $Res Function(_$ServerErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$ServerErrorImpl(
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError([final String? message]) = _$ServerErrorImpl;

  String? get message;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseImplCopyWith<$Res> {
  factory _$$EmailAlreadyInUseImplCopyWith(
    _$EmailAlreadyInUseImpl value,
    $Res Function(_$EmailAlreadyInUseImpl) then,
  ) = __$$EmailAlreadyInUseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$EmailAlreadyInUseImpl>
    implements _$$EmailAlreadyInUseImplCopyWith<$Res> {
  __$$EmailAlreadyInUseImplCopyWithImpl(
    _$EmailAlreadyInUseImpl _value,
    $Res Function(_$EmailAlreadyInUseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailAlreadyInUseImpl implements _EmailAlreadyInUse {
  const _$EmailAlreadyInUseImpl();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements AuthFailure {
  const factory _EmailAlreadyInUse() = _$EmailAlreadyInUseImpl;
}

/// @nodoc
abstract class _$$InvalidEmailAndPasswordCombinationImplCopyWith<$Res> {
  factory _$$InvalidEmailAndPasswordCombinationImplCopyWith(
    _$InvalidEmailAndPasswordCombinationImpl value,
    $Res Function(_$InvalidEmailAndPasswordCombinationImpl) then,
  ) = __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<$Res>
    extends
        _$AuthFailureCopyWithImpl<
          $Res,
          _$InvalidEmailAndPasswordCombinationImpl
        >
    implements _$$InvalidEmailAndPasswordCombinationImplCopyWith<$Res> {
  __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl(
    _$InvalidEmailAndPasswordCombinationImpl _value,
    $Res Function(_$InvalidEmailAndPasswordCombinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidEmailAndPasswordCombinationImpl
    implements _InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombinationImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailAndPasswordCombinationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory _InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombinationImpl;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
    _$UserNotFoundImpl value,
    $Res Function(_$UserNotFoundImpl) then,
  ) = __$$UserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
    _$UserNotFoundImpl _value,
    $Res Function(_$UserNotFoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserNotFoundImpl implements _UserNotFound {
  const _$UserNotFoundImpl();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements AuthFailure {
  const factory _UserNotFound() = _$UserNotFoundImpl;
}

/// @nodoc
abstract class _$$WeakPasswordImplCopyWith<$Res> {
  factory _$$WeakPasswordImplCopyWith(
    _$WeakPasswordImpl value,
    $Res Function(_$WeakPasswordImpl) then,
  ) = __$$WeakPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeakPasswordImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$WeakPasswordImpl>
    implements _$$WeakPasswordImplCopyWith<$Res> {
  __$$WeakPasswordImplCopyWithImpl(
    _$WeakPasswordImpl _value,
    $Res Function(_$WeakPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WeakPasswordImpl implements _WeakPassword {
  const _$WeakPasswordImpl();

  @override
  String toString() {
    return 'AuthFailure.weakPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeakPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _WeakPassword implements AuthFailure {
  const factory _WeakPassword() = _$WeakPasswordImpl;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<$Res> {
  factory _$$InvalidEmailImplCopyWith(
    _$InvalidEmailImpl value,
    $Res Function(_$InvalidEmailImpl) then,
  ) = __$$InvalidEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidEmailImpl>
    implements _$$InvalidEmailImplCopyWith<$Res> {
  __$$InvalidEmailImplCopyWithImpl(
    _$InvalidEmailImpl _value,
    $Res Function(_$InvalidEmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidEmailImpl implements _InvalidEmail {
  const _$InvalidEmailImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail implements AuthFailure {
  const factory _InvalidEmail() = _$InvalidEmailImpl;
}

/// @nodoc
abstract class _$$UserDisabledImplCopyWith<$Res> {
  factory _$$UserDisabledImplCopyWith(
    _$UserDisabledImpl value,
    $Res Function(_$UserDisabledImpl) then,
  ) = __$$UserDisabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDisabledImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UserDisabledImpl>
    implements _$$UserDisabledImplCopyWith<$Res> {
  __$$UserDisabledImplCopyWithImpl(
    _$UserDisabledImpl _value,
    $Res Function(_$UserDisabledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserDisabledImpl implements _UserDisabled {
  const _$UserDisabledImpl();

  @override
  String toString() {
    return 'AuthFailure.userDisabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDisabledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return userDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return userDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class _UserDisabled implements AuthFailure {
  const factory _UserDisabled() = _$UserDisabledImpl;
}

/// @nodoc
abstract class _$$TooManyRequestsImplCopyWith<$Res> {
  factory _$$TooManyRequestsImplCopyWith(
    _$TooManyRequestsImpl value,
    $Res Function(_$TooManyRequestsImpl) then,
  ) = __$$TooManyRequestsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooManyRequestsImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$TooManyRequestsImpl>
    implements _$$TooManyRequestsImplCopyWith<$Res> {
  __$$TooManyRequestsImplCopyWithImpl(
    _$TooManyRequestsImpl _value,
    $Res Function(_$TooManyRequestsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TooManyRequestsImpl implements _TooManyRequests {
  const _$TooManyRequestsImpl();

  @override
  String toString() {
    return 'AuthFailure.tooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyRequestsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _TooManyRequests implements AuthFailure {
  const factory _TooManyRequests() = _$TooManyRequestsImpl;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
    _$NetworkErrorImpl value,
    $Res Function(_$NetworkErrorImpl) then,
  ) = __$$NetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
    _$NetworkErrorImpl _value,
    $Res Function(_$NetworkErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkErrorImpl implements _NetworkError {
  const _$NetworkErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.networkError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements AuthFailure {
  const factory _NetworkError() = _$NetworkErrorImpl;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
    _$UnknownErrorImpl value,
    $Res Function(_$UnknownErrorImpl) then,
  ) = __$$UnknownErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
    _$UnknownErrorImpl _value,
    $Res Function(_$UnknownErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$UnknownErrorImpl(
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UnknownErrorImpl implements _UnknownError {
  const _$UnknownErrorImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.unknownError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return unknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return unknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements AuthFailure {
  const factory _UnknownError([final String? message]) = _$UnknownErrorImpl;

  String? get message;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameAlreadyTakenImplCopyWith<$Res> {
  factory _$$UsernameAlreadyTakenImplCopyWith(
    _$UsernameAlreadyTakenImpl value,
    $Res Function(_$UsernameAlreadyTakenImpl) then,
  ) = __$$UsernameAlreadyTakenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsernameAlreadyTakenImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UsernameAlreadyTakenImpl>
    implements _$$UsernameAlreadyTakenImplCopyWith<$Res> {
  __$$UsernameAlreadyTakenImplCopyWithImpl(
    _$UsernameAlreadyTakenImpl _value,
    $Res Function(_$UsernameAlreadyTakenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UsernameAlreadyTakenImpl implements _UsernameAlreadyTaken {
  const _$UsernameAlreadyTakenImpl();

  @override
  String toString() {
    return 'AuthFailure.usernameAlreadyTaken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameAlreadyTakenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() weakPassword,
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() tooManyRequests,
    required TResult Function() networkError,
    required TResult Function(String? message) unknownError,
    required TResult Function() usernameAlreadyTaken,
  }) {
    return usernameAlreadyTaken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? userNotFound,
    TResult? Function()? weakPassword,
    TResult? Function()? invalidEmail,
    TResult? Function()? userDisabled,
    TResult? Function()? tooManyRequests,
    TResult? Function()? networkError,
    TResult? Function(String? message)? unknownError,
    TResult? Function()? usernameAlreadyTaken,
  }) {
    return usernameAlreadyTaken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? weakPassword,
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? tooManyRequests,
    TResult Function()? networkError,
    TResult Function(String? message)? unknownError,
    TResult Function()? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (usernameAlreadyTaken != null) {
      return usernameAlreadyTaken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
    invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_UserDisabled value) userDisabled,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_UsernameAlreadyTaken value) usernameAlreadyTaken,
  }) {
    return usernameAlreadyTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_WeakPassword value)? weakPassword,
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_UserDisabled value)? userDisabled,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
  }) {
    return usernameAlreadyTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
    invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_UserDisabled value)? userDisabled,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_UsernameAlreadyTaken value)? usernameAlreadyTaken,
    required TResult orElse(),
  }) {
    if (usernameAlreadyTaken != null) {
      return usernameAlreadyTaken(this);
    }
    return orElse();
  }
}

abstract class _UsernameAlreadyTaken implements AuthFailure {
  const factory _UsernameAlreadyTaken() = _$UsernameAlreadyTakenImpl;
}
