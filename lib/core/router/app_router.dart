import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_education_platform/features/auth/presentation/providers/auth_notifier.dart';

import 'package:mobile_education_platform/features/auth/presentation/screens/login_screen.dart';
import 'package:mobile_education_platform/features/auth/presentation/screens/register_screen.dart';
import 'package:mobile_education_platform/features/auth/presentation/screens/forgot_password_screen.dart';

import 'package:mobile_education_platform/features/splash/presentation/splash_screen.dart';

import 'package:mobile_education_platform/features/welcome/presentation/welcome_screen.dart';

import 'package:mobile_education_platform/features/dashboard/presentation/screens/teacher_dashboard_screen.dart';
import 'package:mobile_education_platform/features/dashboard/presentation/screens/student_dashboard_screen.dart';

import 'package:mobile_education_platform/features/auth/presentation/providers/auth_provider.dart';

// Router configuration
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final isLoggedIn = authState.when(
        data: (user) => user != null,
        loading: () => false,
        error: (_, __) => false,
      );

      final isLoginPage = state.uri.toString() == '/login';
      final isRegisterPage = state.uri.toString() == '/register';
      final isForgotPasswordPage = state.uri.toString() == '/forgot-password';
      final isSplashPage = state.uri.toString() == '/splash';
      final isWelcomePage = state.uri.toString() == '/welcome';

      if (!isLoggedIn &&
          !isLoginPage &&
          !isRegisterPage &&
          !isForgotPasswordPage &&
          !isSplashPage &&
          !isWelcomePage) {
        return '/welcome';
      }

      if (isLoggedIn &&
          (isLoginPage ||
              isRegisterPage ||
              isForgotPasswordPage ||
              isSplashPage ||
              isWelcomePage)) {
        return '/dashboard';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardRouter(),
      ),
    ],
  );
});

// Dashboard router to redirect based on user role
class DashboardRouter extends ConsumerWidget {
  const DashboardRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);

    return currentUser.when(
      data: (user) {
        if (user == null) {
          return const LoginScreen();
        }

        switch (user.role) {
          case 'teacher':
          case 'pengajar':
            return const TeacherDashboardScreen();
          case 'student':
          case 'siswa':
            return const StudentDashboardScreen();
          case 'admin':
            // For now, redirect admin to login with message
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Dashboard admin akan tersedia di website'),
                  duration: Duration(seconds: 3),
                ),
              );
              ref.read(authNotifierProvider.notifier).signOut();
            });
            return const LoginScreen();
          default:
            return const StudentDashboardScreen(); // Default to student
        }
      },
      loading: () => const SplashScreen(),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                'Terjadi kesalahan',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(error.toString(), textAlign: TextAlign.center),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(currentUserProvider);
                },
                child: const Text('Coba Lagi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
