import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return IntroductionScreen(
      // Konfigurasi global
      globalBackgroundColor: theme.colorScheme.surface,
      allowImplicitScrolling: true,
      autoScrollDuration: null, // Disable auto scroll
      infiniteAutoScroll: false,

      pages: [
        _buildPageViewModel(
          context: context,
          title: "Selamat Datang di EduPlatform",
          body:
              "Platform pembelajaran terbaik untuk mengembangkan kemampuan Anda dengan mudah dan menyenangkan",
          icon: Icons.school_outlined,
        ),
        _buildPageViewModel(
          context: context,
          title: "Belajar Kapan Saja",
          body:
              "Akses materi pembelajaran berkualitas tinggi kapan saja dan di mana saja sesuai dengan jadwal Anda",
          icon: Icons.access_time_outlined,
        ),
        _buildPageViewModel(
          context: context,
          title: "Bergabung dengan Komunitas",
          body:
              "Terhubung dengan pengajar terbaik dan siswa lainnya dalam komunitas pembelajaran yang mendukung",
          icon: Icons.people_outline,
        ),
        _buildPageViewModel(
          context: context,
          title: "Mulai Perjalanan Anda",
          body:
              "Bergabunglah dengan ribuan siswa yang telah merasakan pengalaman belajar yang luar biasa",
          icon: Icons.rocket_launch_outlined,
          isLastPage: true,
        ),
      ],

      showSkipButton: false,
      showBackButton: false,
      showNextButton: false,
      showDoneButton: false,

      // Dots indicator styling
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: theme.colorScheme.primary.withOpacity(0.3),
        activeSize: const Size(22.0, 10.0),
        activeColor: theme.colorScheme.primary,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        spacing: const EdgeInsets.symmetric(horizontal: 4.0),
      ),

      curve: Curves.easeInOut,
      animationDuration: 300,

      onDone: () {}, 
    );
  }

  PageViewModel _buildPageViewModel({
    required BuildContext context,
    required String title,
    required String body,
    required IconData icon,
    bool isLastPage = false,
  }) {
    final theme = Theme.of(context);

    return PageViewModel(
      title: title,
      body: body,
      image: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              theme.colorScheme.primary.withOpacity(0.1),
              theme.colorScheme.primary.withOpacity(0.05),
            ],
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.primary.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Icon(icon, size: 70, color: theme.colorScheme.primary),
      ),
      footer: isLastPage
          ? _buildActionButtons(context, theme)
          : _buildSwipeHint(context, theme),
      decoration: PageDecoration(
        titleTextStyle:
            theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ) ??
            const TextStyle(),
        bodyTextStyle:
            theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface.withOpacity(0.7),
              height: 1.6,
            ) ??
            const TextStyle(),
        imagePadding: const EdgeInsets.only(top: 40, bottom: 40),
        contentMargin: const EdgeInsets.symmetric(horizontal: 24),
        titlePadding: const EdgeInsets.only(top: 20, bottom: 16),
        bodyPadding: const EdgeInsets.only(bottom: 20),
        footerPadding: const EdgeInsets.only(bottom: 40),
        pageColor: theme.colorScheme.surface,
        imageFlex: 2,
        bodyFlex: 2,
      ),
    );
  }

  Widget _buildSwipeHint(BuildContext context, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: theme.colorScheme.primary.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.swipe, size: 20, color: theme.colorScheme.primary),
                const SizedBox(width: 8),
                Text(
                  'Geser untuk melanjutkan',
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.colorScheme.primary,
                  theme.colorScheme.primary.withOpacity(0.8),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primary.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () => _navigateToLogin(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.login,
                    color: theme.colorScheme.onPrimary,
                    size: 22,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Masuk',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onPrimary,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: theme.colorScheme.primary.withOpacity(0.3),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primary.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: OutlinedButton(
              onPressed: () => _navigateToRegister(context),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_add,
                    color: theme.colorScheme.primary,
                    size: 22,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Daftar Sekarang',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToLogin(BuildContext context) {
    context.go('/login');
  }

  void _navigateToRegister(BuildContext context) {
    context.go('/register');
  }
}
