class Department {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Department({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}

