Feature: Treino
  As a usuario administrador ou professor do sistema
  I want to criar treinos, editar treinos, deletar treinos e visualizar treinos
  So that eu possa controlar os treinos dos alunos da academia

  Scenario: Criando novo treino para um aluno
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de treinos
    When Eu clico em novo treino
    And Eu preencho o tipo do treino com 'A', a descricao 'Treino da primeira semana de academia', a data de inicio '2020-10-17', a data final '2020-10-30', a quantidade de dias '10' e o aluno 'Nathalia'
    And Eu clico em criar novo treino
    Then Eu vejo que o novo treino pra o aluno 'Nathalia' foi criado

  Scenario: Criando novo treino para um aluno com campo tipo do treino vazio
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de treinos
    When Eu clico em novo treino
    And Eu preencho o tipo do treino com '', a descricao 'Treino da primeira semana de academia', a data de inicio '2020-10-17', a data final '2020-10-30', a quantidade de dias '10' e o aluno 'Nathalia'
    And Eu clico em criar novo treino
    Then Eu vejo uma mensagem de treino invalido

  Scenario: Criando novo treino para um aluno com campo de quantidade de dias negativo
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de treinos
    When Eu clico em novo treino
    And Eu preencho o tipo do treino com 'A', a descricao 'Treino da primeira semana de academia', a data de inicio '2020-10-17', a data final '2020-10-30', a quantidade de dias '-2' e o aluno 'Nathalia'
    And Eu clico em criar novo treino
    Then Eu vejo uma mensagem de treino invalido

  Scenario: Removendo um treino existente de um aluno
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de treinos
    And O treino com o tipo 'A', a descricao 'Treino da primeira semana de academia', a data de inicio '2020-10-17', a data final '2020-10-30', a quantidade de dias '10' e o aluno 'Nathalia' existe
    When Eu clico em remover treino com nome do aluno 'Nathalia'
    Then Eu vejo que o treino com o aluno 'Nathalia' nao se encontra mais entre os treinos listados

  Scenario: Editando um treino existente com o novo tipo
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de treinos
    And O treino com o tipo 'A', a descricao 'Treino da primeira semana de academia', a data de inicio '2020-10-17', a data final '2020-10-30', a quantidade de dias '10' e o aluno 'Nathalia' existe
    When Eu clico em editar treino com nome do aluno 'Nathalia'
    And Eu preencho o tipo do treino com 'B', a descricao 'Treino da primeira semana de academia', a data de inicio '2020-10-17', a data final '2020-10-30', a quantidade de dias '10' e o aluno 'Nathalia'
    And Eu clico em atualizar treino
    Then Eu vejo que o novo tipo de treino pra o aluno 'Nathalia' atualizado
