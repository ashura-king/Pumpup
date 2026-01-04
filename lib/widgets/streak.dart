import 'package:flutter/material.dart';

class StreakWidget extends StatelessWidget {
  const StreakWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: List.generate(30, (index) {
          final bool isActive = index < 10;
          return Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: isActive ? const Color(0xFF0A3BBE) : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(3),
            ),
          );
        }),
      ),
    );
  }
}
