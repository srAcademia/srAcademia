class TreinoExerciciosController < ApplicationController
  before_action :set_treino_exercicio, only: [:show, :edit]
  before_action :authorize_admin_professor

  def show
  end

  def new
    @treino_exercicio = TreinoExercicio.new
    @treinos = Treino.all
    @exercicios = Exercicio.all
  end

  def edit
  end

  def create
    @treino_exercicio = TreinoExercicio.new(treino_exercicio_params)
    @treinos = Treino.all
    @exercicios = Exercicio.all

    respond_to do |format|
      if @treino_exercicio.save
        format.html { redirect_to @treino_exercicio, notice: 'Treino exercicio criado com sucesso.' }
        format.json { render :show, status: :created, location: @treino_exercicio }
      else
        format.html { render :new }
        format.json { render json: @treino_exercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_treino_exercicio
    @treino_exercicio = TreinoExercicio.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def treino_exercicio_params
    params.require(:treino_exercicio).permit(:serie, :repeticoes, :treino_id, :exercicio_id)
  end
end
