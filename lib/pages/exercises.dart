import 'package:flutter/material.dart';
import 'package:pump/widgets/action_button.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class Exercise {
  final String name;
  final String imagePath;
  final String description;
  final String category;

  Exercise({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.category,
  });
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                // Biceps Exercises Section
                _buildExerciseSection(context, 'Biceps Exercises', [
                  Exercise(
                    name: 'Barbell Curl',
                    imagePath: 'assets/bicep/barbellcurl.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Biceps',
                  ),
                  Exercise(
                    name: 'Dumbbell Curl',
                    imagePath: 'assets/bicep/dumbellcurl.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Biceps',
                  ),
                  Exercise(
                    name: 'Hammer Curl',
                    imagePath: 'assets/bicep/hammer.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Biceps',
                  ),
                  Exercise(
                    name: 'Preacher Curl',
                    imagePath: 'assets/bicep/preach.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Biceps',
                  ),
                  Exercise(
                    name: 'Incline Dumbbell Curl',
                    imagePath: 'assets/bicep/inclinepress.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Biceps',
                  ),
                ]),

                const SizedBox(height: 24),

                // Chest Exercises Section
                _buildExerciseSection(context, 'Chest Exercises', [
                  Exercise(
                    name: 'Barbell Bench Press',
                    imagePath: 'assets/chest/barbel.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Chest',
                  ),
                  Exercise(
                    name: 'Dumbbell Bench Press',
                    imagePath: 'assets/chest/flat dumbell.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Chest',
                  ),
                  Exercise(
                    name: 'Incline Bench Press',
                    imagePath: 'assets/chest/inclinepress.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Chest',
                  ),
                  Exercise(
                    name: 'Dumbbell Flyes',
                    imagePath: 'assets/chest/dumbell flies.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Chest',
                  ),
                  Exercise(
                    name: 'Cable Chest Fly',
                    imagePath: 'assets/chest/chestfly.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Chest',
                  ),
                ]),
                const SizedBox(height: 24),
                //Tricep Exercises Section
                _buildExerciseSection(context, 'Tricep Exercises', [
                  Exercise(
                    name: 'Tricep Push Down',
                    imagePath: 'assets/tricep/triceppushdown.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Triceps',
                  ),
                  Exercise(
                    name: 'Skull Crusher',
                    imagePath: 'assets/tricep/skull.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Triceps',
                  ),
                  Exercise(
                    name: 'Overhead Tricep Extension',
                    imagePath: 'assets/tricep/tricep overhead.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Triceps',
                  ),
                  Exercise(
                    name: 'Dips',
                    imagePath: 'assets/tricep/dips.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Triceps',
                  ),
                  Exercise(
                    name: 'Close-Grip Bench Press',
                    imagePath: 'assets/tricep/close grip.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Triceps',
                  ),
                ]),

                const SizedBox(height: 24),
                //Shoulder Exercises Section
                _buildExerciseSection(context, 'Shoulder Exercises', [
                  Exercise(
                    name: 'Dumbbell Shoulder Press',
                    imagePath: 'assets/shoulder/shoulder_press.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Shoulders',
                  ),
                  Exercise(
                    name: 'Lateral Raises',
                    imagePath: 'assets/shoulder/lateral_raise.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Shoulders',
                  ),
                  Exercise(
                    name: 'Rear Delt Fly',
                    imagePath: 'assets/shoulder/rear_delt.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Shoulders',
                  ),
                  Exercise(
                    name: 'Front Raises',
                    imagePath: 'assets/shoulder/front_raise.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Shoulders',
                  ),
                  Exercise(
                    name: 'Shoulder Press Machine',
                    imagePath: 'assets/shoulder/shoulder_press_machine.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Shoulders',
                  ),
                ]),

                const SizedBox(height: 24),
                //back Exercises Section
                _buildExerciseSection(context, 'Back Exercises', [
                  Exercise(
                    name: 'Lat Pulldown',
                    imagePath: 'assets/back/lat.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Back',
                  ),
                  Exercise(
                    name: 'Seated Cable Row',
                    imagePath: 'assets/back/cable_row.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Back',
                  ),
                  Exercise(
                    name: 'Pullup',
                    imagePath: 'assets/back/pullup.png',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Back',
                  ),
                  Exercise(
                    name: 'T-Bar Row',
                    imagePath: 'assets/back/T-bar.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Back',
                  ),
                  Exercise(
                    name: 'Pullover',
                    imagePath: 'assets/back/pullover.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Back',
                  ),
                ]),
                const SizedBox(height: 24),
                //leg Exercises Section
                _buildExerciseSection(context, 'Legs Exercises', [
                  Exercise(
                    name: 'Squats (Barbell)',
                    imagePath: 'assets/legs/squat.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Legs',
                  ),
                  Exercise(
                    name: 'Romanian Deadlift',
                    imagePath: 'assets/legs/romanian.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Legs',
                  ),
                  Exercise(
                    name: 'Hack Squat',
                    imagePath: 'assets/legs/hack.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Legs',
                  ),
                  Exercise(
                    name: 'Calf Raises (Standing / Seated)',
                    imagePath: 'assets/legs/calf.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Legs',
                  ),
                  Exercise(
                    name: 'Leg Extension',
                    imagePath: 'assets/legs/leg_extension.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Legs',
                  ),
                ]),

                const SizedBox(height: 24),
                //abdominal Exercise Section
                _buildExerciseSection(context, 'Abdominal Exercises', [
                  Exercise(
                    name: 'Cable Crunch',
                    imagePath: 'assets/abs/cable.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Abs',
                  ),
                  Exercise(
                    name: 'Sit ups',
                    imagePath: 'assets/abs/sit-up.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Abs',
                  ),
                  Exercise(
                    name: 'Hanging Leg Raises',
                    imagePath: 'assets/abs/hang.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Abs',
                  ),
                  Exercise(
                    name: 'Russian Twists',
                    imagePath: 'assets/abs/russian.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Abs',
                  ),
                  Exercise(
                    name: 'Ab Roller',
                    imagePath: 'assets/abs/abroll.jpg',
                    description:
                        'Stand with feet shoulder-width apart. Hold barbell with underhand grip. Curl the bar up while keeping elbows stationary, then lower slowly.',
                    category: 'Abs',
                  ),
                ]),
              ],
            ),
          ),

          ActionButton(
            label: 'Create new exercise',
            icon: Icons.add,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseSection(
    BuildContext context,
    String title,
    List<Exercise> exercises,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            return _buildExerciseCard(context, exercises[index]);
          },
        ),
      ],
    );
  }

  Widget _buildExerciseCard(BuildContext context, Exercise exercise) {
    return GestureDetector(
      onTap: () {
        _showExerciseDetails(context, exercise);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    exercise.imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                exercise.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showExerciseDetails(BuildContext context, Exercise exercise) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(exercise.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    exercise.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      exercise.category,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    'Description:',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    exercise.description,
                    style: const TextStyle(fontSize: 14, height: 1.5),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Close'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
