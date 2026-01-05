import 'package:flutter/material.dart';
import 'package:pump/widgets/action_button.dart';
import 'package:pump/widgets/workout_exercise_form.dart';
import 'package:pump/widgets/workout_exercise_tile.dart';
import 'package:pump/models/workout_exercise.dart';
import 'package:pump/services/workout_exercise_service.dart';

class WorkoutDetailsScreen extends StatefulWidget {
  const WorkoutDetailsScreen({
    super.key,
    required this.workoutId,
    required this.workoutTitle,
    required this.workoutDuration,
    required this.editFunction,
  });

  final String workoutId;
  final String workoutTitle;
  final String workoutDuration;
  final void Function() editFunction;

  @override
  State<WorkoutDetailsScreen> createState() => _WorkoutDetailsScreenState();
}

class _WorkoutDetailsScreenState extends State<WorkoutDetailsScreen> {
  final WorkoutExerciseService _exerciseService = WorkoutExerciseService();

  bool _isLoading = false;
  List<WorkoutExercise> _exercises = [];

  @override
  void initState() {
    super.initState();
    _loadExercises();
  }

  Future<void> _loadExercises() async {
    setState(() => _isLoading = true);

    try {
      final exercises = await _exerciseService.getWorkoutExercises(
        widget.workoutId,
      );

      if (mounted) {
        setState(() {
          _exercises = exercises;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to load exercises')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

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
              widget.workoutTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'Duration: ${widget.workoutDuration}',
              style: const TextStyle(color: Colors.grey, fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: widget.editFunction,
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
            const Text(
              'Exercises',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _exercises.isEmpty
                  ? const Center(child: Text('No exercises added'))
                  : ListView.separated(
                      itemCount: _exercises.length,
                      itemBuilder: (context, index) {
                        final exercise = _exercises[index];

                        return WorkoutExerciseTile(workoutExercise: exercise);
                      },
                      separatorBuilder: (_, __) => const SizedBox(height: 16),
                    ),
            ),

            if (_exercises.isNotEmpty)
              ActionButton(
                label: 'Start Session',
                icon: Icons.play_arrow_outlined,
                onPressed: () {},
              )
            else
              ActionButton(
                isOutline: true,
                label: 'Add exercise to routine',
                icon: Icons.add_circle_outline_outlined,
                onPressed: () {
                  showDialog(
                    context: context, // the current widget context
                    builder: (context) => WorkoutExerciseForm(),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
