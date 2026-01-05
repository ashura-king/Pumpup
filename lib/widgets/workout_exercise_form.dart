import 'package:flutter/material.dart';

class WorkoutExerciseForm extends StatelessWidget {
  const WorkoutExerciseForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Hello!'),
      content: Text('This is a popup dialog.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Close'),
        ),
      ],
    );
  }
}
