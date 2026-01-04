import 'package:flutter/material.dart';
import 'package:pump/models/exercise.dart';
import 'package:pump/pages/exercises/create_exercise.dart';
import 'package:pump/services/exercise_service.dart';
import 'package:pump/widgets/action_button.dart';
import 'package:pump/widgets/exercise_tile.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  final ExerciseService _exerciseService = ExerciseService();
  List<Exercise> _exercises = [];
  Map<String, List<Exercise>> _categorizedExercises = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadExercises();
  }

  Future<void> _loadExercises() async {
    setState(() => _isLoading = true);
    try {
      final exercises = await _exerciseService.getExercises();
      if (!mounted) return;

      // Categorize exercises
      final categorized = <String, List<Exercise>>{};
      for (final exercise in exercises) {
        categorized.putIfAbsent(exercise.category, () => []).add(exercise);
      }

      setState(() {
        _exercises = exercises;
        _categorizedExercises = categorized;
      });
    } catch (e) {
      if (!mounted) return;
      debugPrint('Failed to load exercises: $e');
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to load exercises: $e')));
    } finally {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  Future<void> _navigateToCreateExercise() async {
    await Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const CreateExerciseScreen()));
    _loadExercises();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : _exercises.isEmpty
            ? const Center(child: Text('No exercises available'))
            : _buildCategorizedExercises(),
      ),
      floatingActionButton: ActionButton(
        label: 'Create new exercise',
        icon: Icons.add,
        onPressed: _navigateToCreateExercise,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildCategorizedExercises() {
    final categories = _categorizedExercises.keys.toList();

    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, categoryIndex) {
        final category = categories[categoryIndex];
        final exercises = _categorizedExercises[category]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 12,
                top: categoryIndex > 0 ? 24 : 0,
              ),
              child: Text(
                category,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                return ExerciseTile(exercise: exercises[index]);
              },
            ),
          ],
        );
      },
    );
  }
}
