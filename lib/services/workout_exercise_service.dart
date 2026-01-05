import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pump/models/workout_exercise.dart';

class WorkoutExerciseService {
  final CollectionReference _collection = FirebaseFirestore.instance.collection(
    'workout_exercises',
  );

  Future<void> addWorkoutExercise(WorkoutExercise exercise) async {
    await _collection.add(exercise.toMap());
  }

  Future<void> updateWorkoutExercise(
    String docId,
    WorkoutExercise exercise,
  ) async {
    await _collection.doc(docId).update(exercise.toMap());
  }

  Future<void> deleteWorkoutExercise(String docId) async {
    await _collection.doc(docId).delete();
  }

  Future<List<WorkoutExercise>> getWorkoutExercises(String workoutId) async {
    final querySnapshot = await _collection
        .where('workoutId', isEqualTo: workoutId)
        .orderBy('order')
        .get();

    return querySnapshot.docs
        .map(
          (doc) => WorkoutExercise.fromMap(doc.data() as Map<String, dynamic>),
        )
        .toList();
  }

  Stream<List<WorkoutExercise>> streamWorkoutExercises(String workoutId) {
    return _collection
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
