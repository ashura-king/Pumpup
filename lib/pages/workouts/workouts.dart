import 'package:flutter/material.dart';
import 'package:pump/widgets/action_button.dart';
import 'package:pump/widgets/workout_tile.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Routines',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 12),

          Expanded(
            child: ListView.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                return WorkoutTile();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
            ),
          ),

          ActionButton(
            label: 'Create empty workout',
            icon: Icons.add,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
