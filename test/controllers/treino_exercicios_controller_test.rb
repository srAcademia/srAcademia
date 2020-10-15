require 'test_helper'

class TreinoExerciciosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get treino_exercicios_new_url
    assert_response :success
  end

end
