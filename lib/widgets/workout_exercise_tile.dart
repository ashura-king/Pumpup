import 'package:flutter/material.dart';

class WorkoutExerciseTile extends StatelessWidget {
  const WorkoutExerciseTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        spacing: 16,
        children: [
          Image.network(
            'https://fitnessprogramer.com/wp-content/uploads/2021/06/One-Arm-Pronated-Dumbbell-Triceps-Extension-.gif',
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Exercise Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),

                    Row(
                      spacing: 45,
                      children: [
                        const Text(
                          'Sets: 3',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const Text(
                          'Reps: 12',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  width: 45, // square width
                  height: 45, // square height
                  child: IconButton.filled(
                    padding: EdgeInsets.zero, // remove default padding
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0xFF0A3BBE),
                      ),
                      iconSize: WidgetStateProperty.all(24),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ), // optional rounded corners
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outline, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
