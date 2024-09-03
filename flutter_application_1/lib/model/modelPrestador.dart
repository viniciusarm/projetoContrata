// provider_model.dart
import 'package:flutter_application_1/model/avaliacoes.dart';

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

  // Método para converter um Provider em Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone': phone,
      'specialty': specialty,
      'comments': comments.map((comment) => comment.toMap()).toList(),
    };
  }

  // Método para criar um Provider a partir de um Map
  factory Provider.fromMap(Map<String, dynamic> map) {
    return Provider(
      name: map['name'],
      phone: map['phone'],
      specialty: map['specialty'],
      comments: List<Comment>.from(
        map['comments']?.map((item) => Comment.fromMap(item)) ?? [],
      ),
    );
  }
}

