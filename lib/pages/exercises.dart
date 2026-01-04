import 'package:flutter/material.dart';
import 'package:pump/widgets/pumpup_appbar.dart';
import 'package:pump/widgets/pumpup_navigation_bar.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PumpupAppbar(
        icon: Icons.fitness_center,
        title: 'Exercises',
        editFunction: () {},
      ),

      bottomNavigationBar: PumpupNavigationBar(),
    );
  }
}
