import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_education_platform/features/auth/presentation/providers/auth_provider.dart';
import 'package:mobile_education_platform/features/auth/presentation/providers/auth_notifier.dart';

class StudentDashboardScreen extends ConsumerWidget {
  const StudentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Siswa'),
        elevation: 0,
        backgroundColor: theme.colorScheme.surface,
        foregroundColor: theme.colorScheme.onSurface,
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to notifications
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Fitur notifikasi akan segera hadir')),
              );
            },
            icon: Stack(
              children: [
                const Icon(Icons.notifications_outlined),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.error,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                value: 'help',
                child: ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Bantuan'),
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
                case 'help':
                  // Navigate to help
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Kelas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Tugas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: 'Nilai',
          ),
        ],
        onTap: (index) {
          // Handle navigation
          final titles = ['Beranda', 'Kelas', 'Tugas', 'Nilai'];
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Navigasi ke ${titles[index]}')),
          );
        },
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
            
            // Learning Progress
            _buildLearningProgress(context, theme),
            const SizedBox(height: 20),
            
            // Quick Access
            _buildQuickAccess(context, theme),
            const SizedBox(height: 20),
            
            // Today's Schedule
            _buildTodaySchedule(context, theme),
            const SizedBox(height: 20),
            
            // Pending Assignments
            _buildPendingAssignments(context, theme),
            const SizedBox(height: 20),
            
            // Recent Grades
            _buildRecentGrades(context, theme),
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
                    Icons.school,
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
                        'Halo,',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      Text(
                        user.username ?? 'Siswa',
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
            Text(
              'Mari lanjutkan perjalanan belajarmu hari ini!',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLearningProgress(BuildContext context, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Progress Belajar',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Progress Mingguan',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '75%',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: 0.75,
                  backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildProgressItem(
                        context,
                        theme,
                        'Kelas Diikuti',
                        '8/10',
                        Icons.class_,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProgressItem(
                        context,
                        theme,
                        'Tugas Selesai',
                        '12/15',
                        Icons.assignment_turned_in,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProgressItem(
    BuildContext context,
    ThemeData theme,
    String title,
    String value,
    IconData icon,
  ) {
    return Column(
      children: [
        Icon(
          icon,
          color: theme.colorScheme.primary,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildQuickAccess(BuildContext context, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Akses Cepat',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            _buildQuickAccessItem(
              context,
              theme,
              'Materi',
              Icons.library_books,
              Colors.blue,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Buka Materi Pembelajaran')),
                );
              },
            ),
            _buildQuickAccessItem(
              context,
              theme,
              'Kuis',
              Icons.quiz,
              Colors.green,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Buka Kuis')),
                );
              },
            ),
            _buildQuickAccessItem(
              context,
              theme,
              'Forum',
              Icons.forum,
              Colors.orange,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Buka Forum Diskusi')),
                );
              },
            ),
            _buildQuickAccessItem(
              context,
              theme,
              'Kalender',
              Icons.calendar_today,
              Colors.purple,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Buka Kalender Akademik')),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickAccessItem(
    BuildContext context,
    ThemeData theme,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 28,
                color: color,
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTodaySchedule(BuildContext context, ThemeData theme) {
    final todayClasses = [
      {
        'subject': 'Matematika',
        'teacher': 'Bu Sarah',
        'time': '08:00 - 09:30',
        'room': 'Ruang 101',
        'status': 'upcoming',
      },
      {
        'subject': 'Fisika',
        'teacher': 'Pak Budi',
        'time': '10:00 - 11:30',
        'room': 'Lab Fisika',
        'status': 'current',
      },
      {
        'subject': 'Bahasa Inggris',
        'teacher': 'Ms. Linda',
        'time': '13:00 - 14:30',
        'room': 'Ruang 205',
        'status': 'upcoming',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Jadwal Hari Ini',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to full schedule
              },
              child: const Text('Lihat Semua'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: todayClasses.length,
          itemBuilder: (context, index) {
            final classData = todayClasses[index];
            final isCurrent = classData['status'] == 'current';
            
            return Card(
              elevation: isCurrent ? 2 : 1,
              margin: const EdgeInsets.only(bottom: 8),
              color: isCurrent 
                ? theme.colorScheme.primary.withOpacity(0.1)
                : null,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: isCurrent 
                    ? theme.colorScheme.primary
                    : theme.colorScheme.primary.withOpacity(0.1),
                  child: Icon(
                    Icons.schedule,
                    color: isCurrent 
                      ? Colors.white
                      : theme.colorScheme.primary,
                    size: 20,
                  ),
                ),
                title: Text(
                  classData['subject'] as String,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: isCurrent ? theme.colorScheme.primary : null,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${classData['teacher']} • ${classData['time']}'),
                    Text(classData['room'] as String),
                  ],
                ),
                trailing: isCurrent
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Sedang Berlangsung',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : null,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Buka kelas ${classData['subject']}')),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPendingAssignments(BuildContext context, ThemeData theme) {
    final assignments = [
      {
        'title': 'Tugas Matematika: Integral',
        'subject': 'Matematika',
        'dueDate': '2 hari lagi',
        'priority': 'high',
      },
      {
        'title': 'Essay Bahasa Indonesia',
        'subject': 'Bahasa Indonesia',
        'dueDate': '5 hari lagi',
        'priority': 'medium',
      },
      {
        'title': 'Laporan Praktikum Fisika',
        'subject': 'Fisika',
        'dueDate': '1 minggu lagi',
        'priority': 'low',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tugas Pending',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to all assignments
              },
              child: const Text('Lihat Semua'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: assignments.length,
          itemBuilder: (context, index) {
            final assignment = assignments[index];
            final priority = assignment['priority'] as String;
            Color priorityColor = Colors.green;
            
            if (priority == 'high') {
              priorityColor = Colors.red;
            } else if (priority == 'medium') {
              priorityColor = Colors.orange;
            }

            return Card(
              elevation: 1,
              margin: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: priorityColor.withOpacity(0.1),
                  child: Icon(
                    Icons.assignment,
                    color: priorityColor,
                    size: 20,
                  ),
                ),
                title: Text(
                  assignment['title'] as String,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(assignment['subject'] as String),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 14,
                          color: priorityColor,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          assignment['dueDate'] as String,
                          style: TextStyle(color: priorityColor),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Kerjakan ${assignment['title']}')),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Buka ${assignment['title']}')),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildRecentGrades(BuildContext context, ThemeData theme) {
    final grades = [
      {
        'subject': 'Matematika',
        'assignment': 'Quiz Aljabar',
        'grade': '85',
        'maxGrade': '100',
        'date': '2 hari lalu',
      },
      {
        'subject': 'Fisika',
        'assignment': 'UTS Mekanika',
        'grade': '92',
        'maxGrade': '100',
        'date': '1 minggu lalu',
      },
      {
        'subject': 'Bahasa Inggris',
        'assignment': 'Speaking Test',
        'grade': '88',
        'maxGrade': '100',
        'date': '1 minggu lalu',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Nilai Terbaru',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to all grades
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
            itemCount: grades.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final grade = grades[index];
              final gradeValue = int.parse(grade['grade'] as String);
              Color gradeColor = Colors.green;
              
              if (gradeValue < 70) {
                gradeColor = Colors.red;
              } else if (gradeValue < 80) {
                gradeColor = Colors.orange;
              }

              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: gradeColor.withOpacity(0.1),
                  child: Text(
                    grade['grade'] as String,
                    style: TextStyle(
                      color: gradeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                title: Text(
                  grade['assignment'] as String,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(grade['subject'] as String),
                    Text(
                      '${grade['grade']}/${grade['maxGrade']} • ${grade['date']}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Detail nilai ${grade['assignment']}')),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}