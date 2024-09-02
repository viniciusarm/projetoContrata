// provider_model.dart
class Provider {
  
  final String name;
  final String phone;
  final String specialty;
  final List<Comment> comments;

  Provider({
    required this.name,
    required this.phone,
    required this.specialty,
    this.comments = const [],
  });
}

class Comment {
  final String user;
  final String text;
  final double rating;

  Comment({
    required this.user,
    required this.text,
    required this.rating,
  });
}
