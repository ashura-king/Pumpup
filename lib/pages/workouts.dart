import 'package:flutter/material.dart';
import 'package:pump/widgets/pumpup_appbar.dart';
import 'package:pump/widgets/pumpup_navigation_bar.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PumpupAppbar(
        icon: Icons.fitness_center,
        title: 'Workouts',
        editFunction: () {},
      ),

      bottomNavigationBar: PumpupNavigationBar(),
    );
  }
}
