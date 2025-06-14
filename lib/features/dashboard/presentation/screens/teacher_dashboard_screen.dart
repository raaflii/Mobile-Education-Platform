import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_education_platform/features/auth/presentation/providers/auth_provider.dart';
import 'package:mobile_education_platform/features/auth/presentation/providers/auth_notifier.dart';

class TeacherDashboardScreen extends ConsumerWidget {
  const TeacherDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Pengajar'),
        elevation: 0,
        backgroundColor: theme.colorScheme.surface,
        foregroundColor: theme.colorScheme.onSurface,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'profile',
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuItem(
                value: 'settings',
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Pengaturan'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuItem(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Keluar'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 'profile':
                  // Navigate to profile
                  break;
                case 'settings':
                  // Navigate to settings
                  break;
                case 'logout':
                  ref.read(authNotifierProvider.notifier).signOut();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login',
                    (route) => false,
                  );
                  break;
              }
            },
          ),
        ],
      ),
      body: currentUser.when(
        data: (user) => _buildDashboard(context, user, theme),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64,
                color: theme.colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                'Terjadi kesalahan',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                error.toString(),
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDashboard(BuildContext context, user, ThemeData theme) {
    if (user == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_off,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              'User tidak ditemukan',
              style: theme.textTheme.headlineSmall,
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        // Refresh data
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Card
            _buildWelcomeCard(context, user, theme),
            const SizedBox(height: 20),
            
            // Quick Stats
            _buildQuickStats(context, theme),
            const SizedBox(height: 20),
            
            // Quick Actions
            _buildQuickActions(context, theme),
            const SizedBox(height: 20),
            
            // Recent Activities
            _buildRecentActivities(context, theme),
            const SizedBox(height: 20),
            
            // Upcoming Classes
            _buildUpcomingClasses(context, theme),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeCard(BuildContext context, user, ThemeData theme) {
    return Card(
      elevation: 2,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.primary,
              theme.colorScheme.primary.withOpacity(0.8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  child: Icon(
                    Icons.person,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat datang,',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      Text(
                        user.username ?? 'Pengajar',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Role: ${user.role?.toUpperCase() ?? 'PENGAJAR'}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickStats(BuildContext context, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Statistik Cepat',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                context,
                theme,
                'Total Siswa',
                '24',
                Icons.people,
                Colors.blue,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatCard(
                context,
                theme,
                'Kelas Aktif',
                '3',
                Icons.class_,
                Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                context,
                theme,
                'Tugas Pending',
                '7',
                Icons.assignment,
                Colors.orange,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatCard(
                context,
                theme,
                'Rating',
                '4.8',
                Icons.star,
                Colors.amber,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    ThemeData theme,
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: color,
                  size: 24,
                ),
                Text(
                  value,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aksi Cepat',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.5,
          children: [
            _buildActionCard(
              context,
              theme,
              'Buat Kelas Baru',
              Icons.add_circle,
              () {
                // Navigate to create class
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur akan segera hadir')),
                );
              },
            ),
            _buildActionCard(
              context,
              theme,
              'Kelola Siswa',
              Icons.group,
              () {
                // Navigate to manage students
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur akan segera hadir')),
                );
              },
            ),
            _buildActionCard(
              context,
              theme,
              'Buat Tugas',
              Icons.assignment_add,
              () {
                // Navigate to create assignment
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur akan segera hadir')),
                );
              },
            ),
            _buildActionCard(
              context,
              theme,
              'Laporan',
              Icons.analytics,
              () {
                // Navigate to reports
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur akan segera hadir')),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionCard(
    BuildContext context,
    ThemeData theme,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 32,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecentActivities(BuildContext context, ThemeData theme) {
    final activities = [
      {
        'title': 'Siswa baru bergabung di Kelas Matematika',
        'time': '2 jam yang lalu',
        'icon': Icons.person_add,
        'color': Colors.green,
      },
      {
        'title': 'Tugas "Aljabar Linear" dikumpulkan oleh 5 siswa',
        'time': '4 jam yang lalu',
        'icon': Icons.assignment_turned_in,
        'color': Colors.blue,
      },
      {
        'title': 'Kelas "Fisika Dasar" dijadwalkan ulang',
        'time': '1 hari yang lalu',
        'icon': Icons.schedule,
        'color': Colors.orange,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Aktivitas Terbaru',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to all activities
              },
              child: const Text('Lihat Semua'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 1,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: activities.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final activity = activities[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: (activity['color'] as Color).withOpacity(0.1),
                  child: Icon(
                    activity['icon'] as IconData,
                    color: activity['color'] as Color,
                    size: 20,
                  ),
                ),
                title: Text(
                  activity['title'] as String,
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  activity['time'] as String,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildUpcomingClasses(BuildContext context, ThemeData theme) {
    final classes = [
      {
        'title': 'Matematika Lanjutan',
        'time': '10:00 - 11:30',
        'date': 'Hari ini',
        'students': 15,
      },
      {
        'title': 'Fisika Dasar',
        'time': '14:00 - 15:30',
        'date': 'Besok',
        'students': 12,
      },
      {
        'title': 'Kimia Organik',
        'time': '09:00 - 10:30',
        'date': 'Jumat',
        'students': 18,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Kelas Mendatang',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to schedule
              },
              child: const Text('Lihat Jadwal'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: classes.length,
          itemBuilder: (context, index) {
            final classData = classes[index];
            return Card(
              elevation: 1,
              margin: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
                  child: Icon(
                    Icons.class_,
                    color: theme.colorScheme.primary,
                  ),
                ),
                title: Text(
                  classData['title'] as String,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${classData['date']} • ${classData['time']}'),
                    Text('${classData['students']} siswa'),
                  ],
                ),
                trailing: PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'edit',
                      child: Text('Edit Kelas'),
                    ),
                    const PopupMenuItem(
                      value: 'cancel',
                      child: Text('Batalkan'),
                    ),
                  ],
                  onSelected: (value) {
                    // Handle class actions
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$value kelas ${classData['title']}')),
                    );
                  },
                ),
                onTap: () {
                  // Navigate to class details
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Buka kelas ${classData['title']}')),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}