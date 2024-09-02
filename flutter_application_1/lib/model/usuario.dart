// usuario_model.dart
class Usuario {
  final String nome;
  final String email;
  final String senha;

  Usuario({
    required this.nome,
    required this.email,
    required this.senha,
  });

  // Método para converter um Usuario em Map
  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': email,
      'senha': senha,
    };
  }

  // Método para criar um Usuario a partir de um Map
  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
    );
  }
}
