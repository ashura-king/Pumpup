import 'package:flutter/material.dart';
import 'package:pump/models/workout.dart';
import 'package:pump/pages/workouts/workout_details.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({super.key, required this.workout});

  final Workout workout;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WorkoutDetailsScreen(
              workoutId: workout.id,
              editFunction: () {},
              workoutDuration: '2 - 3 hours',
              workoutTitle: 'Advance PPL',
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: BoxBorder.all(color: Colors.grey[300]!),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          spacing: 4,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    workout.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300]!,
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 14),
              child: Text(
                'Duration : ${workout.duration} hours',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),

            SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}
