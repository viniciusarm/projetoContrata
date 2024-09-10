import 'package:flutter_application_1/model/BancoDeDados.dart';
import 'package:flutter_application_1/model/Avaliacoes.dart';

class AvaliacaoController{

  // start no banco de dados
final Bancodedados bancodados = Bancodedados();
//estrutura para criar objeto

//user é o nome da classe model de vocês
Future<int> addComment ( Avaliacao avaliar) async{
//Criando uma variável de banco de dados para salvar os dados.
//Serve para conectar o método ao banco de dado.
  final db = await bancodados.database;

//Mandar os dados para o banco de dados 
//Register
return await db.insert('Avaliacao',avaliar.toMap());

}//final do método de cadastro de usuário.

//método de excluir o usuário.
Future<int> deletarComment (int id) async{
//cria variável de banco de dados para acessar os métodos
final db = await bancodados.database;//bancodados referência o banco de dados

//excluir o usuário dentro do banco de dados.
return await db.delete('Avaliacao', where: 'id=?',whereArgs: [id]);
/* delete o registro dentro da tabela Comment, onde id do usuário
 for igual ao id passado no método usuário for igual */
}

//método para editar o usuário 
//Register é classe model
Future<int> editComment (Avaliacao avaliar) async{

//criar variável do usuário no banco de dados para acessar o método.
final db = await bancodados.database;
//atualizar os dados no banco de dados.
return await db.update('Avaliacao', avaliar.toMap(),where: 'id=?',whereArgs: [avaliar.idAvaliacao] );

}//fim do método editRegistro

//Método de listar Registro
Future<List<Avaliacao>> getComment(dynamic listadeAvaliacao) async{
  //criar variável para receber a lista dos usuários do banco de dados.
  /* Variável do tipo lista, que recebe uma Map de Strings dinamicas 
  que recebe todos os dados da tabela usuário do banco de dados*/

  /* percorra a lista de usuário e mande/retorne todos os dados para o método FromMap da lasse model Register */
  return List.generate(listadeAvaliacao.length, (int i){
    return Avaliacao.fromMap(listadeAvaliacao[i]);
  });

}

// listar as avaliações apenas do prestador de serviço que foi escolhido
Future<Avaliacao?> listarAvaliacao(int idProvider) async{
    final db = await bancodados.database;

    // busque no banco de dados as avaliações onde idProvider é igual id do usuário que foi passado
    final List<Map<String,dynamic>> lista = await db.query(
      'Avaliacao', where: 'idProvider=?', whereArgs: [idProvider],
    );

    if(lista.isNotEmpty){
      return Avaliacao.fromMap(lista.first);
    }else{
      return null;
    }

}
}