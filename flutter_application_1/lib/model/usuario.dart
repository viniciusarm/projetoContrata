class Usuario {
  final int? idUser;
  final String nome;
  final String email;
  final String password;

  Usuario({
    this.idUser,
    required this.nome,
    required this.email,
    required this.password,
  });

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      idUser: map['id'],
      nome: map['nome'],
      email: map['email'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': idUser,
      'nome': nome,
      'email': email,
      'password': password,
    };
  }
}
