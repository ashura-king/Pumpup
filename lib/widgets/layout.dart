import 'package:flutter/material.dart';
import 'package:pump/pages/dashboard.dart';
import 'package:pump/pages/exercises.dart';
import 'package:pump/pages/profile.dart';
import 'package:pump/pages/workouts.dart';
import 'package:pump/widgets/protected.dart';
import 'package:pump/widgets/pumpup_appbar.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;

  final List<PumpupAppbar> _appbars = [
    PumpupAppbar(
      disableEdit: true,
      icon: Icons.dashboard,
      title: "Dashboard",
      editFunction: () {},
    ),
    PumpupAppbar(
      icon: Icons.fitness_center,
      title: "Workouts",
      editFunction: () {},
    ),
    PumpupAppbar(
      icon: Icons.accessibility,
      title: "Exercises",
      editFunction: () {},
    ),
    PumpupAppbar(icon: Icons.person, title: "Profile", editFunction: () {}),
  ];

  final List<Widget> _pages = [
    Protected(child: DashboardScreen()),
    Protected(child: WorkoutScreen()),
    Protected(child: ExercisesScreen()),
    Protected(child: ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appbars[_currentIndex],
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF0A3BBE),
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
        ],
      ),
    );
  }
}
