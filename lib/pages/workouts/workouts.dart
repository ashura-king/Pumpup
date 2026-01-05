import 'package:flutter/material.dart';
import 'package:pump/models/workout.dart';
import 'package:pump/pages/workouts/create_workout.dart';
import 'package:pump/services/workout_service.dart';
import 'package:pump/widgets/action_button.dart';
import 'package:pump/widgets/workout_tile.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  final WorkoutService _workoutService = WorkoutService();
  List<Workout> _workouts = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadWorkouts();
  }

  Future<void> _loadWorkouts() async {
    setState(() => _isLoading = true);

    try {
      final workouts = await _workoutService.getUserWorkouts().first;

      if (mounted) {
        setState(() {
          _workouts = workouts;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Failed to load workouts: $e')));
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _navigateToCreateWorkout() async {
    // Wait for user to create workout
    await Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const CreateWorkoutScreen()));

    // Reload workouts after returning
    _loadWorkouts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Routines',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),

          // Loading indicator or workouts list
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _workouts.isEmpty
                ? _buildEmptyState()
                : RefreshIndicator(
                    onRefresh: _loadWorkouts,
                    child: ListView.separated(
                      itemCount: _workouts.length,
                      itemBuilder: (context, index) {
                        final workout = _workouts[index];
                        return WorkoutTile(workout: workout);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 16);
                      },
                    ),
                  ),
          ),

          const SizedBox(height: 16),

          ActionButton(
            label: 'Create empty workout',
            icon: Icons.add,
            onPressed: _navigateToCreateWorkout,
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.fitness_center, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 16),
          const Text(
            'No workouts yet',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Create your first workout routine to get started with your fitness journey',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
