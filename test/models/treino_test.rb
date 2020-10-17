require 'test_helper'

class TreinoTest < ActiveSupport::TestCase
  test 'salvar treino valido' do
    admin = Usuario.new(nome: 'admin', email: 'admin@example.com',
                        telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9),
                        password: 'password', password_confirmation: 'password', tipo: 2)
    admin.save
    aluno = Usuario.new(nome: 'aluno', email: 'aluno@example.com',
                        telefone: '878888888', data_nascimento: Date.new(1999, 9, 9),
                        password: 'password', password_confirmation: 'password', tipo: 0)
    aluno.save
    treino = Treino.new(tipo_treino: 'A', descricao: 'Primeira semana de treino',
                        data_inicio: Date.new(2020, 10, 17), data_final: Date.new(2020, 10, 30),
                        quantidade_dias: 10, aluno_id: aluno.id, professor_id: admin.id)
    assert treino.save
  end

  test 'salvar treino com tipo de treino vazio' do
    admin = Usuario.new(nome: 'admin', email: 'admin@example.com',
                        telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9),
                        password: 'password', password_confirmation: 'password', tipo: 2)
    admin.save
    aluno = Usuario.new(nome: 'aluno', email: 'aluno@example.com',
                        telefone: '878888888', data_nascimento: Date.new(1999, 9, 9),
                        password: 'password', password_confirmation: 'password', tipo: 0)
    aluno.save
    treino = Treino.new(tipo_treino: '', descricao: 'Primeira semana de treino',
                        data_inicio: Date.new(2020, 10, 17), data_final: Date.new(2020, 10, 30),
                        quantidade_dias: 10, aluno_id: aluno.id, professor_id: admin.id)
    assert_not treino.save
  end

  test 'deletar treino existente' do
    admin = Usuario.new(nome: 'admin', email: 'admin@example.com',
                        telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9),
                        password: 'password', password_confirmation: 'password', tipo: 2)
    admin.save
    aluno = Usuario.new(nome: 'aluno', email: 'aluno@example.com',
                        telefone: '878888888', data_nascimento: Date.new(1999, 9, 9),
                        password: 'password', password_confirmation: 'password', tipo: 0)
    aluno.save
    treino = Treino.new(tipo_treino: 'A', descricao: 'Primeira semana de treino',
                        data_inicio: Date.new(2020, 10, 17), data_final: Date.new(2020, 10, 30),
                        quantidade_dias: 10, aluno_id: aluno.id, professor_id: admin.id)
    treino.save
    assert treino.delete
  end
end
