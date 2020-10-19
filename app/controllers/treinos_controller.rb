class TreinosController < ApplicationController
  before_action :set_treino, only: [:show, :edit, :update, :destroy, :concluir_treino_do_dia]
  before_action :authorize
  before_action :authorize_admin_professor, only: [:new, :create, :edit, :update, :destroy]
  before_action :correct_user_treino, only: [:show]

  # GET /treinos
  # GET /treinos.json
  def index
    if current_user.admin? or current_user.professor?
      @treinos = Treino.all
    elsif current_user.present?
      @treinos = Treino.where(aluno_id: current_user.id)
    end
  end

  # GET /treinos/1
  # GET /treinos/1.json
  def show
  end

  # GET /treinos/new
  def new
    @treino = Treino.new
    @usuarios = Usuario.all
  end

  def concluir_treino_do_dia
    if @treino.ultima_data != Time.zone.today and @treino.quantidade_dias > 0
      @treino.update_attributes(quantidade_dias: @treino.quantidade_dias-1)
      @treino.update_attributes(ultima_data: Time.zone.today)
      redirect_to root_path
    else
      redirect_to root_path, notice: 'Você já conclui o treino de hoje.'
    end
  end

  # GET /treinos/1/edit
  def edit
    @usuarios = Usuario.all
  end

  # POST /treinos
  # POST /treinos.json
  def create
    @treino = Treino.new(treino_params)
    @usuarios = Usuario.all
    @treino.professor_id = current_user.id
    @treino.ultima_data = Time.zone.yesterday

    respond_to do |format|
      if @treino.save
        format.html { redirect_to @treino, notice: 'Treino was successfully created.' }
        format.json { render :show, status: :created, location: @treino }
      else
        format.html { render :new }
        format.json { render json: @treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treinos/1
  # PATCH/PUT /treinos/1.json
  def update
    respond_to do |format|
      if @treino.update(treino_params)
        format.html { redirect_to @treino, notice: 'Treino was successfully updated.' }
        format.json { render :show, status: :ok, location: @treino }
      else
        format.html { render :edit }
        format.json { render json: @treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treinos/1
  # DELETE /treinos/1.json
  def destroy
    @treino.destroy
    respond_to do |format|
      format.html { redirect_to treinos_url, notice: 'Treino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treino
      @treino = Treino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treino_params
      params.require(:treino).permit(:tipo_treino, :descricao, :data_inicio, :data_final, :quantidade_dias, :aluno_id)
    end
end
