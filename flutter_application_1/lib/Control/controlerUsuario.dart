import 'package:flutter_application_1/model/BancoDeDados.dart';
import 'package:flutter_application_1/model/usuario.dart';

class UserController{
// start no banco de dados
final Bancodedados bancodados = Bancodedados();
//estrutura para criar objeto

//user é o nome da classe model de vocês
Future<int> addPrestador ( Usuario user) async{
//Criando uma variável de banco de dados para salvar os dados.
//Serve para conectar o método ao banco de dado.
  final db = await bancodados.database;

//Mandar os dados para o banco de dados 
//Register
return await db.insert('Usuario',user.toMap());

}//final do método de cadastro de usuário.

//método de excluir o usuário.
Future<int> deletarPrestador (int id) async{
//cria variável de banco de dados para acessar os métodos
final db = await bancodados.database;//bancodados referência o banco de dados

//excluir o usuário dentro do banco de dados.
return await db.delete('Usuario', where: 'id',whereArgs: [id]);
/* delete o registro dentro da tabela register, onde id do usuário
 for igual ao id passado no método usuário for igual */
}

//método para editar o usuário 
//Register é classe model
Future<int> editPrestador (Usuario user) async{

//criar variável do usuário no banco de dados para acessar o método.
final db = await bancodados.database;
//atualizar os dados no banco de dados.
return await db.update('Usuario', user.toMap(),where: 'id=?',whereArgs: [user.idUser] );

}//fim do método editRegistro

//Método de listar Registro
Future<List<Usuario>> getRegister(dynamic listadeUsuario) async{
  //criar variável para receber a lista dos usuários do banco de dados.
  /* Variável do tipo lista, que recebe uma Map de Strings dinamicas 
  que recebe todos os dados da tabela usuário do banco de dados*/

  /* percorra a lista de usuário e mande/retorne todos os dados para o método FromMap da lasse model Register */
  return List.generate(listadeUsuario.length, (int i){
    return Usuario.fromMap(listadeUsuario[i]);
  });

}


}