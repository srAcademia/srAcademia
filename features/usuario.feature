Feature: Usuario
  As a administrador do sistema srAcademia
  I want to adicionar, remover, mostrar e atualizar um usuario
  so that eu nao tenha que fazer isso manualmente

  Scenario: novo usuario do tipo professor
    Given Um usuario administrador existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina administrar usuarios
    When Eu clico em novo usuario
    And Eu preencho o nome com 'Milena', o email 'milena@example.com', o telefone '877777777', a data_nascimento '1999-02-03', a password 'milena123', a password_confirmation 'milena123' e o tipo 'professor'
    And Eu clico em criar novo usuario
    Then Eu vejo que o novo usuario com nome 'Milena' foi salvo

  Scenario: novo usuario do tipo professor invalido com campo nome vazio
    Given Um usuario administrador existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina administrar usuarios
    When Eu clico em novo usuario
    And Eu preencho o nome com '', o email 'milena@example.com', o telefone '877777777', a data_nascimento '1999-02-03', a password 'milena123', a password_confirmation 'milena123' e o tipo 'professor'
    And Eu clico em criar novo usuario
    Then Eu vejo uma mensagem de usuario invalido

  Scenario: novo usuario do tipo professor invalido com email invalido
    Given Um usuario administrador existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina administrar usuarios
    When Eu clico em novo usuario
    And Eu preencho o nome com 'milena', o email 'milenexample.com', o telefone '877777777', a data_nascimento '1999-02-03', a password 'milena123', a password_confirmation 'milena123' e o tipo 'professor'
    And Eu clico em criar novo usuario
    Then Eu vejo uma mensagem de usuario invalido

  Scenario: remover usuario do tipo professor existente
    Given Um usuario administrador existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina administrar usuarios
    And O usuario com o nome 'milena', o email 'milena@example.com', o telefone '877777777', a data_nascimento '1999-02-03', a password 'milena123', a password_confirmation 'milena123' e o tipo 'professor' existe
    When Eu clico em remover usuario do tipo professor com nome 'milena'
    Then Eu vejo que o usuario 'milena' nao se encontra mais entre os usuarios listados

  Scenario: editar o usuario do tipo professor invalido com o nome menor que 3 caracteres
    Given Um usuario administrador existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina administrar usuarios
    And O usuario com o nome 'milena', o email 'milena@example.com', o telefone '877777777', a data_nascimento '1999-02-03', a password 'milena123', a password_confirmation 'milena123' e o tipo 'professor' existe
    When Eu clico em editar usuario com o nome 'milena'
    And Eu preencho o nome com 'mi', o email 'milenexample.com', o telefone '877777777', a data_nascimento '1999-02-03', a password 'milena123', a password_confirmation 'milena123' e o tipo 'professor'
    And Eu clico no botao alterar
    Then Eu vejo uma mensagem de usuario invalido
