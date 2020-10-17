require "application_system_test_case"

class AnamnesesTest < ApplicationSystemTestCase
  setup do
    @anamnese = anamneses(:one)
  end

  test "visiting the index" do
    visit anamneses_url
    assert_selector "h1", text: "Anamneses"
  end

  test "creating a Anamnese" do
    visit anamneses_url
    click_on "New Anamnese"

    fill_in "Alcolotra", with: @anamnese.alcolotra
    fill_in "Alergia", with: @anamnese.alergia
    fill_in "Atividade fisica", with: @anamnese.atividade_fisica
    fill_in "Atividade trabalho", with: @anamnese.atividade_trabalho
    fill_in "Cardiopatia", with: @anamnese.cardiopatia
    fill_in "Cirurgia", with: @anamnese.cirurgia
    fill_in "Data exame clinico", with: @anamnese.data_exame_clinico
    fill_in "Desc alergia", with: @anamnese.desc_alergia
    fill_in "Desc atividade fisica", with: @anamnese.desc_atividade_fisica
    fill_in "Desc atividade trabalho", with: @anamnese.desc_atividade_trabalho
    fill_in "Desc dor corporal", with: @anamnese.desc_dor_corporal
    fill_in "Desc lesao", with: @anamnese.desc_lesao
    fill_in "Descricao cirurgia", with: @anamnese.descricao_cirurgia
    fill_in "Descricao exame clinico", with: @anamnese.descricao_exame_clinico
    fill_in "Dor corporal", with: @anamnese.dor_corporal
    fill_in "Fumante", with: @anamnese.fumante
    fill_in "Lesao", with: @anamnese.lesao
    fill_in "Objetivo", with: @anamnese.objetivo
    fill_in "Problema saude", with: @anamnese.problema_saude
    click_on "Create Anamnese"

    assert_text "Anamnese was successfully created"
    click_on "Back"
  end

  test "updating a Anamnese" do
    visit anamneses_url
    click_on "Edit", match: :first

    fill_in "Alcolotra", with: @anamnese.alcolotra
    fill_in "Alergia", with: @anamnese.alergia
    fill_in "Atividade fisica", with: @anamnese.atividade_fisica
    fill_in "Atividade trabalho", with: @anamnese.atividade_trabalho
    fill_in "Cardiopatia", with: @anamnese.cardiopatia
    fill_in "Cirurgia", with: @anamnese.cirurgia
    fill_in "Data exame clinico", with: @anamnese.data_exame_clinico
    fill_in "Desc alergia", with: @anamnese.desc_alergia
    fill_in "Desc atividade fisica", with: @anamnese.desc_atividade_fisica
    fill_in "Desc atividade trabalho", with: @anamnese.desc_atividade_trabalho
    fill_in "Desc dor corporal", with: @anamnese.desc_dor_corporal
    fill_in "Desc lesao", with: @anamnese.desc_lesao
    fill_in "Descricao cirurgia", with: @anamnese.descricao_cirurgia
    fill_in "Descricao exame clinico", with: @anamnese.descricao_exame_clinico
    fill_in "Dor corporal", with: @anamnese.dor_corporal
    fill_in "Fumante", with: @anamnese.fumante
    fill_in "Lesao", with: @anamnese.lesao
    fill_in "Objetivo", with: @anamnese.objetivo
    fill_in "Problema saude", with: @anamnese.problema_saude
    click_on "Update Anamnese"

    assert_text "Anamnese was successfully updated"
    click_on "Back"
  end

  test "destroying a Anamnese" do
    visit anamneses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anamnese was successfully destroyed"
  end
end
