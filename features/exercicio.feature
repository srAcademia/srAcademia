# Feature: Exercicio
#   As a usuario do sistema
#   I want to criar exercicios, editar exercicios, deletar exercicios e visualizar exercicios
#   So that eu possa interagir com os treinos dos alunos da academia

#   Scenario: Criando um novo exercicio
#     Given Eu estou na pagina de exercicios
#     And Eu clico no botao novo exercicio
#     When Eu preencho o nome do exercico com 'exercicio 1' com grupo muscular 'abdomen' e descricao 'manter coluna ereta e suportar o peso do corpo'
#     Then Eu vejo que o exercicio de titulo 'exercicio 1' foi criado com sucesso

#   Scenario: Excluindo um exercicio existente
#     Given O exercicio de titulo 'exercicio 1', grupo muscular 'abdomen' e descricao 'exercicio ereto' existe
#     And Eu estou na pagina de exercicios
#     When Eu clico em excluir exercicio de titulo 'exercicio 1'
#     Then Eu vejo uma mensagem 'Exercicio deletado com sucesso.'

#   Scenario: Criando um novo exercicio com campo nome vazio
#     Given Eu estou na pagina de exercicios
#     And Eu clico no botao novo exercicio
#     When Eu deixo os campos nome '', grupo muscular '' e descricao '' como vazio
#     Then Eu vejo uma mensagem de exercicio invalido

#   Scenario: Editando 
