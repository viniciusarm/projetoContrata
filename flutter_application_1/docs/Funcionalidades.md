# FUNCIONALIDADES BÁSICAS 

<!-- Código para por imagens dentro da documentação  -->
![Diagrama Caso de Uso](flutter_application_1/docs/SERVIÇO.png)
![Diagrama Conceitual](/Conceitual.png)

**Registro de Usuário**
- Os usuários criam uma conta inoformando nome,
email e criando uma senha. 
- Caso ele queira se cadastrar 
como Prestador de serviços, mais para frente ele tem essa opção
e terá que informar seu telefone e sua especialidade.

**Login e autenticação**
- Após realizar o seu cadastro, ele ficará salvo no banco de dados
e quando o usuário for fazer login novamente, então só precisará ser feito
a autenticação do email e senha escritos com o email e senha do banco de dados.

**Tabela de serviços**
- Autenticado o login o usuário pode vizualizar um painel de serviços e no canto inferior
direito tem um "+", onde caso queira, ele pode se cadastrar como prestador de serviços.
- Caso ele aperte em algum dos serviços ele navegará para outra tela onde verá os prestadores 
de serviço disponíveis.

**Prestadores de serviços**
- Após clicar em alguns dos serviços expostos na vitrine, o usuário poderá 
vizualizar os profissionais que ele tem a disposição, clicando neles poderá entrar
em contato e iniciar um negócio.
- Após realizarem o acordo e o profissional concluir o serviço, então na plataforma 
o contratante poderá deixar uma avalição com comentário retornando um feeedback para o
profissional, que ganha mais credibilidade.

**Tela de perfil**
- A tela de perfil irá conter o nome do usuário, email e histórico de serviços que ele já
contratou e do profissional terá o histórico de serviços que ele realizou, também terá, o 
histórico de avaliações tanto feitas quanto recebidas. 
