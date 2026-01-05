import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pump/models/workout.dart';

class WorkoutService {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('workouts');

  String get _uid => _auth.currentUser!.uid;

  Future<void> createWorkout({required String name}) async {
    await _collection.add({'name': name, 'duration': 0.0, 'userId': _uid});
  }

  Stream<List<Workout>> getUserWorkouts() {
    return _collection
        .where('userId', isEqualTo: _uid)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => Workout.fromMap(doc.id, doc.data()))
              .toList(),
        );
  }

  Future<void> updateWorkout(Workout workout) async {
    await _collection.doc(workout.id).update({
      'name': workout.name,
      'duration': workout.duration,
    });
  }

  Future<void> deleteWorkout(String id) async {
    await _collection.doc(id).delete();
  }
}
