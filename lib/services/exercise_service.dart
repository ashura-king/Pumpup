import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pump/models/exercise.dart';
import 'dart:convert';
import 'dart:io';

class ExerciseService {
  final CollectionReference _exercisesRef = FirebaseFirestore.instance
      .collection('exercises');

  Future<String> createExercise(Exercise exercise, {File? imageFile}) async {
    try {
      if (imageFile != null && await imageFile.exists()) {
        final bytes = await imageFile.readAsBytes();
        final base64Image = base64Encode(bytes);
        exercise = exercise.copyWith(
          path: 'data:image/jpeg;base64,$base64Image',
        );
      }

      final docRef = await _exercisesRef.add(exercise.toMap());
      return docRef.id;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Exercise>> getExercises() async {
    try {
      final snapshot = await _exercisesRef.get();
      return snapshot.docs
          .map(
            (doc) =>
                Exercise.fromMap(doc.id, doc.data() as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<Exercise?> getExerciseById(String id) async {
    try {
      final doc = await _exercisesRef.doc(id).get();
      if (!doc.exists) return null;
      return Exercise.fromMap(doc.id, doc.data() as Map<String, dynamic>);
    } catch (e) {
      return null;
    }
  }

  Future<void> updateExercise(Exercise exercise) async {
    try {
      await _exercisesRef.doc(exercise.id).update(exercise.toMap());
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteExercise(String id) async {
    try {
      await _exercisesRef.doc(id).delete();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Exercise>> getExercisesByCategory(String category) async {
    try {
      final snapshot = await _exercisesRef
          .where('category', isEqualTo: category)
          .get();
      return snapshot.docs
          .map(
            (doc) =>
                Exercise.fromMap(doc.id, doc.data() as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
