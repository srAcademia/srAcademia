require "application_system_test_case"

class TreinosTest < ApplicationSystemTestCase
  setup do
    @treino = treinos(:one)
  end

  test "visiting the index" do
    visit treinos_url
    assert_selector "h1", text: "Treinos"
  end

  test "creating a Treino" do
    visit treinos_url
    click_on "New Treino"

    fill_in "Aluno", with: @treino.aluno_id
    fill_in "Data final", with: @treino.data_final
    fill_in "Data inicio", with: @treino.data_inicio
    fill_in "Descricao", with: @treino.descricao
    fill_in "Professor", with: @treino.professor_id
    fill_in "Quantidade dias", with: @treino.quantidade_dias
    fill_in "Tipo treino", with: @treino.tipo_treino
    click_on "Create Treino"

    assert_text "Treino was successfully created"
    click_on "Back"
  end

  test "updating a Treino" do
    visit treinos_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @treino.aluno_id
    fill_in "Data final", with: @treino.data_final
    fill_in "Data inicio", with: @treino.data_inicio
    fill_in "Descricao", with: @treino.descricao
    fill_in "Professor", with: @treino.professor_id
    fill_in "Quantidade dias", with: @treino.quantidade_dias
    fill_in "Tipo treino", with: @treino.tipo_treino
    click_on "Update Treino"

    assert_text "Treino was successfully updated"
    click_on "Back"
  end

  test "destroying a Treino" do
    visit treinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Treino was successfully destroyed"
  end
end
