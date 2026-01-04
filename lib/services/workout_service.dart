import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pump/models/workout_exercise.dart';
import 'package:pump/models/workouts.dart';

class WorkoutService {
  final _workoutRef = FirebaseFirestore.instance.collection('workouts');
  final _workoutExerciseRef = FirebaseFirestore.instance.collection(
    'workout_exercises',
  );

  // CREATE WORKOUT
  Future<String> createWorkout(Workout workout) async {
    final doc = await _workoutRef.add(workout.toMap());
    return doc.id;
  }

  // READ (single)
  Future<Workout?> getWorkoutById(String id) async {
    final doc = await _workoutRef.doc(id).get();
    if (!doc.exists) return null;

    return Workout.fromMap(doc.id, doc.data() as Map<String, dynamic>);
  }

  // READ (all)
  Stream<List<Workout>> getWorkouts() {
    return _workoutRef.snapshots().map(
      (snapshot) => snapshot.docs
          .map(
            (doc) =>
                Workout.fromMap(doc.id, doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  // UPDATE
  Future<void> updateWorkout(Workout workout) async {
    await _workoutRef.doc(workout.id).update(workout.toMap());
  }

  // DELETE (with cascade)
  Future<void> deleteWorkout(String workoutId) async {
    final batch = FirebaseFirestore.instance.batch();

    final links = await _workoutExerciseRef
        .where('workoutId', isEqualTo: workoutId)
        .get();

    for (final doc in links.docs) {
      batch.delete(doc.reference);
    }

    batch.delete(_workoutRef.doc(workoutId));

    await batch.commit();
  }

  // ADD EXERCISE TO WORKOUT
  Future<void> addExerciseToWorkout(WorkoutExercise link) async {
    await _workoutExerciseRef.add(link.toMap());
  }

  // GET EXERCISES FOR WORKOUT
  Stream<List<WorkoutExercise>> getWorkoutExercises(String workoutId) {
    return _workoutExerciseRef
        .where('workoutId', isEqualTo: workoutId)
        .orderBy('order')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map(
                (doc) =>
                    WorkoutExercise.fromMap(doc.data() as Map<String, dynamic>),
              )
              .toList(),
        );
  }
}
