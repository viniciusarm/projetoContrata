// provider_model.dart
import 'package:flutter_application_1/model/avaliacoes.dart';

class Provider {
  int? idProvider;
  final String name;
  final String phone;
  final String specialty;
  final List<Comment> comments;

  Provider({
    this.idProvider,
    required this.name,
    required this.phone,
    required this.specialty,
    this.comments = const [],
  });

  // Método para converter um Provider em Map
  Map<String, dynamic> toMap() {
    return {
      'idProvider': idProvider,
      'name': name,
      'phone': phone,
      'specialty': specialty,
      'comments': comments.map((comment) => comment.toMap()).toList(),
    };
  }

  // Método para criar um Provider a partir de um Map
  factory Provider.fromMap(Map<String, dynamic> map) {
    return Provider(
      idProvider: map['idProvider'],
      name: map['name'],
      phone: map['phone'],
      specialty: map['specialty'],
      comments: List<Comment>.from(
        map['comments']?.map((item) => Comment.fromMap(item)) ?? [],
      ),
    );
  }
}

