class Workout {
  final String id;
  final String name;
  final String duration;

  Workout({required this.id, required this.name, required this.duration});

  factory Workout.fromMap(String id, Map<String, dynamic> data) {
    return Workout(id: id, name: data['name'], duration: data['duration']);
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'duration': duration};
  }
}
