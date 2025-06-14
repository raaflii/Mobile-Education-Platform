import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_education_platform/features/auth/domain/entitites/user.dart';
import '../providers/auth_notifier.dart';
import '../../domain/failures/auth_failure.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      ref
          .read(authNotifierProvider.notifier)
          .signIn(
            email: _emailController.text.trim(),
            password: _passwordController.text,
          );
    }
  }

  Future<void> _handleGoogleSignIn() async {
    ref.read(authNotifierProvider.notifier).signInWithGoogle();
  }

  String _getErrorMessage(AuthFailure failure) {
    return failure.when(
      serverError: (message) => message ?? 'Server error occurred',
      emailAlreadyInUse: () => 'Email sudah digunakan',
      invalidEmailAndPasswordCombination: () =>
          'Email atau password tidak valid',
      userNotFound: () => 'User tidak ditemukan',
      weakPassword: () => 'Password terlalu lemah',
      invalidEmail: () => 'Format email tidak valid',
      userDisabled: () => 'Akun telah dinonaktifkan',
      tooManyRequests: () => 'Terlalu banyak percobaan. Coba lagi nanti',
      networkError: () => 'Error jaringan. Periksa koneksi Anda',
      unknownError: (message) => message ?? 'Terjadi kesalahan',
      usernameAlreadyTaken: () => 'Username sudah digunakan',
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);

    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.when(
        initial: () {
          // Handle password reset success
          if (previous != null &&
              previous.maybeWhen(loading: () => true, orElse: () => false)) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Email reset password telah dikirim'),
                backgroundColor: Colors.green,
              ),
            );
          }
        },
        loading: () {},
        success: (user) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login berhasil!'),
              backgroundColor: Colors.green,
            ),
          );
          // Navigate based on user role
          if (user.role == UserRole.teacher) {
            Navigator.of(context).pushReplacementNamed('/teacher-dashboard');
          } else {
            Navigator.of(context).pushReplacementNamed('/student-dashboard');
          }
        },
        failure: (failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(_getErrorMessage(failure)),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
        },
      );
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 60),

                // App Logo/Icon (Optional)
                Icon(
                  Icons.school,
                  size: 80,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(height: 24),

                // Title
                Text(
                  'Selamat Datang',
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Masuk ke akun Anda',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),

                // Email Field
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Masukkan email Anda',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    if (!RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    ).hasMatch(value)) {
                      return 'Format email tidak valid';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Password Field
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Masukkan password Anda',
                    prefixIcon: const Icon(Icons.lock_outlined),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => _handleLogin(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Remember Me & Forgot Password Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value ?? false;
                            });
                          },
                        ),
                        const Text('Ingat saya'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        final email = _emailController.text.trim();
                        context.push('/forgot-password', extra: email);
                      },
                      child: const Text('Lupa Password?'),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Login Button
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: authState.maybeWhen(
                      loading: () => null,
                      orElse: () => _handleLogin,
                    ),
                    child: authState.maybeWhen(
                      loading: () => const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      ),
                      orElse: () => const Text('Masuk'),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Divider
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'atau',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 24),

                OutlinedButton.icon(
                  onPressed: authState.maybeWhen(
                    loading: () => null,
                    orElse: () => _handleGoogleSignIn,
                  ),
                  icon: authState.maybeWhen(
                    loading: () => const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    orElse: () => Image.asset(
                      'assets/images/google-logo.png',
                      height: 18,
                      width: 18,
                    ),
                  ),
                  label: const Text('Masuk dengan Google'),
                ),
                const SizedBox(height: 16),

                OutlinedButton(
                  onPressed: () {
                    context.push('/register');
                  },
                  child: const Text('Belum punya akun? Daftar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
