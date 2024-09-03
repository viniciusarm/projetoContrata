class Comment {
  final String user;
  final String text;
  final double rating;

  Comment({
    required this.user,
    required this.text,
    required this.rating,
  });

  // Método para converter um Comment em Map
  Map<String, dynamic> toMap() {
    return {
      'user': user,
      'text': text,
      'rating': rating,
    };
  }

  // Método para criar um Comment a partir de um Map
  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      user: map['user'],
      text: map['text'],
      rating: map['rating'],
    );
  }
}