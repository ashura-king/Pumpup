import 'package:flutter/material.dart';
import 'package:pump/widgets/action_button.dart';
import 'package:pump/widgets/workout_exercise_tile.dart';

class WorkoutDetailsScreen extends StatelessWidget {
  const WorkoutDetailsScreen({
    super.key,
    required this.workoutTitle,
    required this.workoutDuration,
    required this.editFunction,
  });

  final String workoutTitle;
  final String workoutDuration;
  final void Function() editFunction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workoutTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'Duration: $workoutDuration',
              style: const TextStyle(color: Colors.grey, fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: editFunction,
            child: const Text(
              'Edit',
              style: TextStyle(
                color: Color(0xFF0A3BBE),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add workout details content here
            const Text(
              'Exercises',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 12),

            Expanded(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return WorkoutExerciseTile();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
              ),
            ),

            ActionButton(
              label: 'Start Session',
              icon: Icons.play_arrow_outlined,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
