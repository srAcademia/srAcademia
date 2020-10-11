require 'test_helper'

class ExercicioTest < ActiveSupport::TestCase
   
    test 'salvar exercicio valido' do
        exercicio = Exercicio.new(nome:'exercicio 1',grupo_muscular: 'abdomen', descricao: 'manter coluna ereta e suportar o peso do corpo')
        assert exercicio.save
      end
      test 'salvar exercicio com campo titulo invalido' do
        exercicio = Exercicio.new(nome:' ',grupo_muscular: 'abdomen', descricao: 'manter coluna ereta e suportar o peso do corpo')
        assert_not exercicio.save
      end
      test 'deletar exercicio existente' do
        exercicio = Exercicio.new(nome:'exercicio 1',grupo_muscular: 'abdomen', descricao: 'manter coluna ereta e suportar o peso do corpo')
        exercicio.save
        assert exercicio.delete
      end
end
