Feature: Exercicio
  As a usuario do sistema
  I want to criar exercicios, editar exercicios, deletar exercicios e visualizar exercicios
  So that eu possa interagir com os treinos dos alunos da academia

  Scenario: Criando um novo exercicio
    Given Eu estou na pagina de exercicios
    And Eu clico no botao novo exercicio
    When Eu preencho o nome do exercico com "exercicio 1" com grupo muscular "abdomen" e descricao "manter coluna ereta e suportar o peso do corpo"
    Then Eu vejo que o exercicio de titulo "exercicio 1" foi criado com sucesso
