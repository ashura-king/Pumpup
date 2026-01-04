import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pump/models/exercise.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({super.key, required this.exercise});

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: _buildImage(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              exercise.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    if (exercise.path.startsWith('data:image')) {
      try {
        final base64String = exercise.path.split(',').last;
        final bytes = base64Decode(base64String);
        return Image.memory(
          bytes,
          fit: BoxFit.contain,
          width: double.infinity,
          height: double.infinity,
        );
      } catch (e) {
        return _buildPlaceholder();
      }
    } else if (exercise.path.contains('/')) {
      return Image.file(
        File(exercise.path),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    } else if (exercise.path.isNotEmpty) {
      return Image.asset(
        exercise.path,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    } else {
      return _buildPlaceholder();
    }
  }

  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: Icon(Icons.fitness_center, size: 40, color: Colors.grey[400]),
      ),
    );
  }
}
