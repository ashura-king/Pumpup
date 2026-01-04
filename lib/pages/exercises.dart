import 'package:flutter/material.dart';
import 'package:pump/widgets/action_button.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Biceps',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 12),

          Expanded(child: SizedBox()),

          ActionButton(
            label: 'Create new exercise',
            icon: Icons.add,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
