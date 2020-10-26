Feature: Exercicio
  As a usuario do sistema
  I want to criar exercicios, editar exercicios, deletar exercicios e visualizar exercicios
  So that eu possa interagir com os treinos dos alunos da academia

  Scenario: Criando um novo exercicio
    Given Um usuario administrador existe com o nome 'admin', o email 'admin@example.com', o telefone '879999999', a data_nascimento '1999-09-09', a password 'password', a password_confirmation 'password' e o tipo '2'
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de exercicios
    And Eu clico no botao novo exercicio
    When Eu preencho o nome do exercico com 'exercicio 1' com grupo muscular 'abdomen' e descricao 'manter coluna ereta e suportar o peso do corpo'
    Then Eu vejo que o exercicio de titulo 'exercicio 1' foi criado com sucesso

  Scenario: Excluindo um exercicio existente
    Given Um usuario administrador existe com o nome 'admin', o email 'admin@example.com', o telefone '879999999', a data_nascimento '1999-09-09', a password 'password', a password_confirmation 'password' e o tipo '2'
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And O exercicio de titulo 'exercicio 1', grupo muscular 'abdomen' e descricao 'exemplo' existe
    And Eu estou na pagina de exercicios
    When Eu clico em excluir exercicio de titulo 'exercicio 1'
    Then Eu vejo uma mensagem 'Exercício deletado com sucesso.'

   Scenario: Criando um novo exercicio com campo nome vazio
    Given Um usuario administrador existe com o nome 'admin', o email 'admin@example.com', o telefone '879999999', a data_nascimento '1999-09-09', a password 'password', a password_confirmation 'password' e o tipo '2'
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    Given Eu estou na pagina de exercicios
    And Eu clico no botao novo exercicio
    When Eu deixo os campos nome vazio '', grupo muscular 'abdomen' e descricao 'exemplo'
    Then Eu vejo uma mensagem de exercicio invalido

   Scenario: Editando a descricao de um exercicio existente
    Given Um usuario administrador existe com o nome 'admin', o email 'admin@example.com', o telefone '879999999', a data_nascimento '1999-09-09', a password 'password', a password_confirmation 'password' e o tipo '2'
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de exercicios
    And O exercicio de titulo 'exercicio 1', grupo muscular 'abdomen' e descricao 'exemplo' existe
    And Eu estou na pagina para editar o exercicio de titulo 'exercicio 1'
    When Eu renomeio a descricao com 'descricao exemplo' e clico no botao de update exercicio
    Then Eu vejo uma mensagem de 'Exercício editado com sucesso.'

  Scenario: Criando um exercicio invalido
    Given Um usuario administrador existe com o nome 'admin', o email 'admin@example.com', o telefone '879999999', a data_nascimento '1999-09-09', a password 'password', a password_confirmation 'password' e o tipo '2'
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de exercicios
    And Eu clico no botao novo exercicio
    When Eu preencho o nome do exercico com 'abc' com grupo muscular 'abd' e descricao 'a'
    Then Eu vejo uma mensagem de erro
