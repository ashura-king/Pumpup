import 'package:flutter/material.dart';

class ExerciseListScreen extends StatelessWidget {
  const ExerciseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Exercises',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Biceps Exercises Section
          _buildExerciseSection(context, 'Biceps Exercises', [
            Exercise(
              name: 'Barbell Curl',
              imagePath: 'assets/bicep/barbellcurl.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Dumbbell Curl',
              imagePath: 'assets/bicep/dumbellcurl.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Hammer Curl',
              imagePath: 'assets/bicep/hammer.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Preacher Curl',
              imagePath: 'assets/bicep/preach.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Incline Dumbbell Curl',
              imagePath: 'assets/bicep/inclinepress.jpg',
              videoPath: '',
            ),
          ]),

          const SizedBox(height: 24),

          // Chest Exercises Section
          _buildExerciseSection(context, 'Chest Exercises', [
            Exercise(
              name: 'Barbell Bench Press',
              imagePath: 'assets/chest/barbel.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Dumbbell Bench Press',
              imagePath: 'assets/chest/flat dumbell.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Incline Bench Press',
              imagePath: 'assets/chest/inclinepress.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Dumbbell Flyes',
              imagePath: 'assets/chest/dumbell flies.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Cable Chest Fly',
              imagePath: 'assets/chest/chestfly.jpg',
              videoPath: '',
            ),
          ]),
          //Tricepp Exercises Section
          _buildExerciseSection(context, 'Tricep Exercises', [
            Exercise(
              name: 'Tricep Push Down',
              imagePath: 'assets/tricep/triceppushdown.png',
              videoPath: '',
            ),
            Exercise(
              name: 'Skull Crusher',
              imagePath: 'assets/tricep/skull.png',
              videoPath: '',
            ),
            Exercise(
              name: 'Overhead Tricep Extension',
              imagePath: 'assets/tricep/tricep overhead.png',
              videoPath: '',
            ),
            Exercise(
              name: 'Dips',
              imagePath: 'assets/tricep/dips.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Close-Grip Bench Pres',
              imagePath: 'assets/tricep/close grip.jpg',
              videoPath: '',
            ),
          ]),
          //Shoulder Exercises Section
          _buildExerciseSection(context, 'Shoulder Exercises', [
            Exercise(
              name: 'Dumbbell Shoulder Press',
              imagePath: 'assets/shoulder/shoulder_press.png',
              videoPath: '',
            ),
            Exercise(
              name: 'Lateral Raises',
              imagePath: 'assets/shoulder/lateral_raise.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Rear Delt Fly',
              imagePath: 'assets/shoulder/rear_delt.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Front Raises',
              imagePath: 'assets/shoulder/front_raise.png',
              videoPath: '',
            ),
            Exercise(
              name: 'Shoulder Press Machine',
              imagePath: 'assets/shoulder/shoulder_press_machine.png',
              videoPath: '',
            ),
          ]),
          //back  Exercises Section
          _buildExerciseSection(context, 'Back Exercises', [
            Exercise(
              name: 'Lat Pulldown',
              imagePath: 'assets/back/lat.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Seated Cable Row',
              imagePath: 'assets/back/cable_row.png',
              videoPath: '',
            ),
            Exercise(
              name: 'Pullup',
              imagePath: 'assets/back/pullup.png',
              videoPath: '',
            ),
            Exercise(
              name: 'T-Bar Row',
              imagePath: 'assets/back/T-bar.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Pullover',
              imagePath: 'assets/back/pullover.jpg',
              videoPath: '',
            ),
          ]),
          //leg Exrcises Section
          _buildExerciseSection(context, 'Legs Exercises', [
            Exercise(
              name: 'Squats (Barbell)',
              imagePath: 'assets/legs/squat.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Romanian Deadlift',
              imagePath: 'assets/legs/romanian.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Hack Squat',
              imagePath: 'assets/legs/hack.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Calf Raises (Standing / Seated)',
              imagePath: 'assets/legs/calf.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Leg Extension',
              imagePath: 'assets/legs/leg_extension.jpg',
              videoPath: '',
            ),
          ]),
          //abdominal Exercise Section
          _buildExerciseSection(context, 'Abominal Exercises', [
            Exercise(
              name: 'Cable Crunch',
              imagePath: 'assets/abs/cable.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Sit ups',
              imagePath: 'assets/abs/sit-up.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Hanging Leg Raises',
              imagePath: 'assets/abs/hang.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Russian Twists',
              imagePath: 'assets/abs/russian.jpg',
              videoPath: '',
            ),
            Exercise(
              name: 'Ab Roller',
              imagePath: 'assets/abs/abroll.jpg',
              videoPath: '',
            ),
          ]),
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 1,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.blue,
            unselectedItemColor: const Color.fromARGB(255, 230, 227, 227),
            elevation: 0,
            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.pushReplacementNamed(context, '/');
                  break;
                case 1:
                  Navigator.pushNamed(context, '/calendar');
                  break;
                case 2:
                  Navigator.pushNamed(context, '/exercise');

                  break;
                case 3:
                  Navigator.pushReplacementNamed(context, '/menu');
                  break;
              }
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.folder), label: ''),
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: '',
              ),

              BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
            ],
          ),
        ),
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
            fontSize: 18,
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
        _playExerciseVideo(context, exercise);
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

  void _playExerciseVideo(BuildContext context, Exercise exercise) {}
}

class Exercise {
  final String name;
  final String imagePath;
  final String videoPath;

  Exercise({
    required this.name,
    required this.imagePath,
    required this.videoPath,
  });
}
