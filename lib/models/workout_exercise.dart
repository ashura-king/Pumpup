class WorkoutExercise {
  final String workoutId;
  final String exerciseId;
  final int order;
  final int sets;
  final int reps;

  WorkoutExercise({
    required this.workoutId,
    required this.exerciseId,
    required this.order,
    required this.sets,
    required this.reps,
  });

  factory WorkoutExercise.fromMap(Map<String, dynamic> data) {
    return WorkoutExercise(
      workoutId: data['workoutId'],
      exerciseId: data['exerciseId'],
      order: data['order'],
      sets: data['sets'],
      reps: data['reps'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'workoutId': workoutId,
      'exerciseId': exerciseId,
      'order': order,
      'sets': sets,
      'reps': reps,
    };
  }
}
