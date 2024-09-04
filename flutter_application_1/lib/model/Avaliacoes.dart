class Comment {

  int? idComment;
  final String user;
  final String text;
  final double rating;

  Comment({
    this.idComment,
    required this.user,
    required this.text,
    required this.rating,
  });

  // Método para converter um Comment em Map
  Map<String, dynamic> toMap() {
    return {
      'idComment': idComment,
      'user': user,
      'text': text,
      'rating': rating,
    };
  }

  // Método para criar um Comment a partir de um Map
  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      idComment:  map['idComment'],
      user: map['user'],
      text: map['text'],
      rating: map['rating'],
    );
  }
}