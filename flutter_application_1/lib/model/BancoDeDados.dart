import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Bancodedados { //Classe para criar um banco de dados.

//create databse.
// Criar uma instância do banco de dados.
static final Bancodedados _instancia 
= Bancodedados._internal();
//instanciando.
factory Bancodedados()=>_instancia;

//use databse.
//protocolo de segurança contra instancias duplicadas.
//evita que o banco de dados seja duplicado.
Bancodedados._internal();

//referência para o banco de dados.
static Database? _database;

//get para acessar o banco de dados.
//assync define o trabalho assincrono.
Future<Database> get database async{
  if(_database != null) return _database!;
  //verifica se o banco de dados é diferente de nulo e se for retorna o banco de dados

//incializar o banco de dados caso ele não tenha sido inicializado.
_database = await _initDatabase();
return _database!; //retorna o banco de dados iniciado.

}

//método de inicialização privada do banco de dados

Future<Database> _initDatabase()async{
  //obter o caminho do diretório do banco de dados
  String path = join (await getDatabasesPath(),'Register.database.db');
  //user_databse.db é o nome do banco de dados.
  //abre o banco de dados, e caso ele nã oexista, o método cria o BD.
  return openDatabase(path, /*Procura ver se já existe ou não através do
  caminho.*/
  version: 2, //versão do banco de dados.
onCreate: _onCreate, //método chama acriação do banco de dados.
//onUpgrade: _onUpgrade, //atualiza p banco de dadps caso exista

  );

}

// metodo de criação do banco de dados.
Future _onCreate(Database db, int version) async {
// 
await db.execute('''
  CREATE TABLE User (
    id INTERGER PRIMARY KEY AUTOINCREMENT ,
    nome: Varchar (30),
    email: Varchar (30),
    password: Varhar (20),
    endereco: Varchar (50),
    telefone: Varchar (14),
    
''');
await db.execute('''
  CREATE TABLE Profissao (
    id INTERGER PRIMARY KEY AUTOINCREMENT ,
    nome TEXT NOT NULL,
    
''');
await db.execute('''
  CREATE TABLE prestador (
    id INTERGER PRIMARY KEY AUTOINCREMENT ,
    idprofissao INTEGER NOT NULL,
    idregister INTEGER NOT NULL,
    FOREIGN KEY (idprofissao) REFERENCES profissao(id),
    FOREIGN KEY (idregister) REFERENCES register(id)
    
''');

await db.execute('''
  CREATE TABLE  (
  id INTERGER PRIMARY KEY AUTOINCREMENT.
  user

  );
''');

}//fim do método de criação do banco de dados.

Future _onUpdate (Database db, int version) async{
  
}

}