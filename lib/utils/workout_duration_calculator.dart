import 'package:pump/models/workout_exercise.dart';

class WorkoutDurationCalculator {
  static const int secondsPerRep = 3;
  static const int restBetweenSets = 60;
  static const int restBetweenExercises = 90;
  static const int setupTimePerExercise = 30;

  static Duration calculate({required List<WorkoutExercise> exercises}) {
    int totalSeconds = 0;

    for (final exercise in exercises) {
      if (exercise.sets <= 0 || exercise.reps <= 0) continue;

      final workTime = exercise.reps * secondsPerRep * exercise.sets;

      final restTime = (exercise.sets > 1)
          ? (exercise.sets - 1) * restBetweenSets
          : 0;

      totalSeconds += workTime;
      totalSeconds += restTime;
      totalSeconds += setupTimePerExercise;
    }

    if (exercises.length > 1) {
      totalSeconds += (exercises.length - 1) * restBetweenExercises;
    }

    return Duration(seconds: totalSeconds);
  }

  static String format(Duration duration) {
    if (duration.inSeconds <= 0) {
      return '0m';
    }

    int totalMinutes = (duration.inSeconds / 60).ceil();

    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;

    final parts = <String>[];

    if (hours > 0) {
      parts.add('${hours}h');
    }

    if (minutes > 0 || hours == 0) {
      parts.add('${minutes}m');
    }

    return parts.join(' ');
  }
}
