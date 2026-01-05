class Workout {
  final String id;
  final String name;
  final double duration;
  final String userId;

  Workout({
    required this.id,
    required this.name,
    required this.duration,
    required this.userId,
  });

  factory Workout.fromMap(String id, Map<String, dynamic> data) {
    return Workout(
      id: id,
      name: data['name'] as String,
      duration: (data['duration'] as num).toDouble(),
      userId: data['userId'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'duration': duration, 'userId': userId};
  }
}
