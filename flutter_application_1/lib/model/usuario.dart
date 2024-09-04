// usuario_model.dart
class Usuario {
  int? idUser; 
  final String nome;
  final String email;
  final String senha;

  Usuario({
    this.idUser,
    required this.nome,
    required this.email,
    required this.senha,
  });

  // Método para converter um Usuario em Map
  Map<String, dynamic> toMap() {
    return {
      'idUser': idUser,
      'nome': nome,
      'email': email,
      'senha': senha,
    };
  }

  // Método para criar um Usuario a partir de um Map
  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      idUser: map['idUser'],
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
    );
  }
}