import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_education_platform/features/auth/domain/entitites/user.dart';
import '../providers/auth_notifier.dart';
import '../../domain/failures/auth_failure.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  UserRole _selectedRole = UserRole.student;

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
    if (_formKey.currentState!.validate()) {
      // Check username availability first
      final isAvailable = await ref
          .read(authNotifierProvider.notifier)
          .isUsernameAvailable(_usernameController.text.trim());

      if (!isAvailable) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Username sudah digunakan'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
        return;
      }

      ref
          .read(authNotifierProvider.notifier)
          .signUp(
            email: _emailController.text.trim(),
            password: _passwordController.text,
            username: _usernameController.text.trim(),
            role: _selectedRole,
          );
    }
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
        initial: () {},
        loading: () {},
        success: (user) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Registrasi berhasil! Silakan login'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pushReplacementNamed('/login');
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Title
                        Text(
                          'Buat Akun Baru',
                          style: Theme.of(context).textTheme.displaySmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Isi data di bawah untuk membuat akun',
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurface.withOpacity(0.7),
                              ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),

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

                        // Username Field
                        TextFormField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            hintText: 'Masukkan username Anda',
                            prefixIcon: Icon(Icons.person_outlined),
                          ),
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username tidak boleh kosong';
                            }
                            if (value.length < 3) {
                              return 'Username minimal 3 karakter';
                            }
                            if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                              return 'Username hanya boleh huruf, angka, dan underscore';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),

                        // Role Selection
                        DropdownButtonFormField<UserRole>(
                          value: _selectedRole,
                          decoration: const InputDecoration(
                            labelText: 'Role',
                            prefixIcon: Icon(Icons.assignment_ind_outlined),
                          ),
                          items: [
                            DropdownMenuItem(
                              value: UserRole.student,
                              child: const Text('Siswa'),
                            ),
                            DropdownMenuItem(
                              value: UserRole.teacher,
                              child: const Text('Pengajar'),
                            ),
                          ],
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                _selectedRole = value;
                              });
                            }
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
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            if (value.length < 6) {
                              return 'Password minimal 6 karakter';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),

                        // Confirm Password Field
                        TextFormField(
                          controller: _confirmPasswordController,
                          decoration: InputDecoration(
                            labelText: 'Konfirmasi Password',
                            hintText: 'Masukkan ulang password Anda',
                            prefixIcon: const Icon(Icons.lock_outlined),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureConfirmPassword
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureConfirmPassword =
                                      !_obscureConfirmPassword;
                                });
                              },
                            ),
                          ),
                          obscureText: _obscureConfirmPassword,
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => _handleRegister(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Konfirmasi password tidak boleh kosong';
                            }
                            if (value != _passwordController.text) {
                              return 'Password tidak sama';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 32),

                        // Register Button
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: authState.maybeWhen(
                              loading: () => null,
                              orElse: () => _handleRegister,
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
                              orElse: () => const Text('Daftar'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Back to Login
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Sudah punya akun? Masuk'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
