require 'test_helper'

class AnamnesesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anamnese = anamneses(:one)
  end

  test "should get index" do
    get anamneses_url
    assert_response :success
  end

  test "should get new" do
    get new_anamnese_url
    assert_response :success
  end

  test "should create anamnese" do
    assert_difference('Anamnese.count') do
      post anamneses_url, params: { anamnese: { alcolotra: @anamnese.alcolotra, alergia: @anamnese.alergia, atividade_fisica: @anamnese.atividade_fisica, atividade_trabalho: @anamnese.atividade_trabalho, cardiopatia: @anamnese.cardiopatia, cirurgia: @anamnese.cirurgia, data_exame_clinico: @anamnese.data_exame_clinico, desc_alergia: @anamnese.desc_alergia, desc_atividade_fisica: @anamnese.desc_atividade_fisica, desc_atividade_trabalho: @anamnese.desc_atividade_trabalho, desc_dor_corporal: @anamnese.desc_dor_corporal, desc_lesao: @anamnese.desc_lesao, descricao_cirurgia: @anamnese.descricao_cirurgia, descricao_exame_clinico: @anamnese.descricao_exame_clinico, dor_corporal: @anamnese.dor_corporal, fumante: @anamnese.fumante, lesao: @anamnese.lesao, objetivo: @anamnese.objetivo, problema_saude: @anamnese.problema_saude } }
    end

    assert_redirected_to anamnese_url(Anamnese.last)
  end

  test "should show anamnese" do
    get anamnese_url(@anamnese)
    assert_response :success
  end

  test "should get edit" do
    get edit_anamnese_url(@anamnese)
    assert_response :success
  end

  test "should update anamnese" do
    patch anamnese_url(@anamnese), params: { anamnese: { alcolotra: @anamnese.alcolotra, alergia: @anamnese.alergia, atividade_fisica: @anamnese.atividade_fisica, atividade_trabalho: @anamnese.atividade_trabalho, cardiopatia: @anamnese.cardiopatia, cirurgia: @anamnese.cirurgia, data_exame_clinico: @anamnese.data_exame_clinico, desc_alergia: @anamnese.desc_alergia, desc_atividade_fisica: @anamnese.desc_atividade_fisica, desc_atividade_trabalho: @anamnese.desc_atividade_trabalho, desc_dor_corporal: @anamnese.desc_dor_corporal, desc_lesao: @anamnese.desc_lesao, descricao_cirurgia: @anamnese.descricao_cirurgia, descricao_exame_clinico: @anamnese.descricao_exame_clinico, dor_corporal: @anamnese.dor_corporal, fumante: @anamnese.fumante, lesao: @anamnese.lesao, objetivo: @anamnese.objetivo, problema_saude: @anamnese.problema_saude } }
    assert_redirected_to anamnese_url(@anamnese)
  end

  test "should destroy anamnese" do
    assert_difference('Anamnese.count', -1) do
      delete anamnese_url(@anamnese)
    end

    assert_redirected_to anamneses_url
  end
end
