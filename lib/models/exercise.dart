class Exercise {
  final String id;
  final String name;
  final String path;
  final String description;
  final String category;

  Exercise({
    required this.id,
    required this.name,
    required this.path,
    required this.description,
    required this.category,
  });

  factory Exercise.fromMap(String id, Map<String, dynamic> data) {
    return Exercise(
      id: id,
      name: data['name'] ?? '',
      path: data['path'] ?? '',
      description: data['description'] ?? '',
      category: data['category'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'path': path,
      'description': description,
      'category': category,
    };
  }

  Exercise copyWith({
    String? id,
    String? name,
    String? path,
    String? description,
    String? category,
  }) {
    return Exercise(
      id: id ?? this.id,
      name: name ?? this.name,
      path: path ?? this.path,
      description: description ?? this.description,
      category: category ?? this.category,
    );
  }
}
