require 'test_helper'

class AnamneseTest < ActiveSupport::TestCase
  
  test 'salvar anamnese valido' do
    aluno = Usuario.new(nome: 'aluno', email: 'aluno@example.com',
      telefone: '878888888', data_nascimento: Date.new(1999, 9, 9),
      password: 'password', password_confirmation: 'password', tipo: 0)
    aluno.save
    anamnese = Anamnese.new(atividade_trabalho: 'Ficar sentado(a)', desc_atividade_trabalho: 'Programador', data_exame_clinico:'01/10/2020', 
                            descricao_exame_clinico: 'Exame de Sangue', cardiopatia: 'Nenhum', cirurgia: 'Não',descricao_cirurgia: '',problema_saude: '',
                            dor_corporal: 'Sim', desc_dor_corporal: 'Joelho', lesao: 'Sim', desc_lesao: 'Desgaste por uso excessivo da articulação',
                            alergia: 'Não', desc_alergia: '', fumante: 'Não', alcolotra: 'Não', atividade_fisica: 'Corrida', 
                            desc_atividade_fisica: '', objetivo: 'Barriga tanquinho',usuario_id: aluno.id)
    assert anamnese.save
  end
  
  test 'salvar anamnese com o campo atividade de trabalho invalido' do
    aluno = Usuario.new(nome: 'aluno', email: 'aluno@example.com',
      telefone: '878888888', data_nascimento: Date.new(1999, 9, 9),
      password: 'password', password_confirmation: 'password', tipo: 0)
    aluno.save
    anamnese = Anamnese.new(atividade_trabalho: '', desc_atividade_trabalho: 'Programador', data_exame_clinico:'01/10/2020', 
                            descricao_exame_clinico: 'Exame de Sangue', cardiopatia: 'Nenhum', cirurgia: 'Não',descricao_cirurgia: '',problema_saude: '',
                            dor_corporal: 'Sim', desc_dor_corporal: 'Joelho', lesao: 'Sim', desc_lesao: 'Desgaste por uso excessivo da articulação',
                            alergia: 'Não', desc_alergia: '', fumante: 'Não', alcolotra: 'Não', atividade_fisica: 'Corrida', 
                            desc_atividade_fisica: '', objetivo: 'Barriga tanquinho',usuario_id: aluno.id)
    assert_not anamnese.save
  end
 
  test 'deletar anamnese existente' do
    aluno = Usuario.new(nome: 'aluno', email: 'aluno@example.com',
      telefone: '878888888', data_nascimento: Date.new(1999, 9, 9),
      password: 'password', password_confirmation: 'password', tipo: 0)
    aluno.save
    anamnese = Anamnese.new(atividade_trabalho: '', desc_atividade_trabalho: 'Programador', data_exame_clinico:'01/10/2020', 
                            descricao_exame_clinico: 'Exame de Sangue', cardiopatia: 'Nenhum', cirurgia: 'Não',descricao_cirurgia: '',problema_saude: '',
                            dor_corporal: 'Sim', desc_dor_corporal: 'Joelho', lesao: 'Sim', desc_lesao: 'Desgaste por uso excessivo da articulação',
                            alergia: 'Não', desc_alergia: '', fumante: 'Não', alcolotra: 'Não', atividade_fisica: 'Corrida', 
                            desc_atividade_fisica: '', objetivo: 'Barriga tanquinho',usuario_id: aluno.id)
    anamnese.save
    assert anamnese.delete
  end

end
