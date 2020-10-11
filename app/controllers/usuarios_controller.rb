class UsuariosController < ApplicationController
  before_action :correct_user?, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  # GET /usuarios
  # GET /usuarios.json
  def index
    if current_user.admin?
      @usuarios = Usuario.all
    else
      redirect_to current_user
    end
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    if current_user.aluno?
      render 'show_aluno'
    elsif current_user.professor?
      render 'show_professor'
    else
      render 'show_admin'
    end
  end

  # GET /usuarios/new
  def new
    if current_user.admin?
      @usuario = Usuario.new
    else
      redirect_to current_user
    end
  end

  # GET /usuarios/1/edit
  def edit
    if current_user.admin?
      render 'edit_admin'
    else
      render 'edit'
    end
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      redirect_to usuarios_path
    else
      render :new
    end

  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuário modificado com sucesso.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    if current_user == @usuario
      @usuario.destroy
      sign_out
    else
      @usuario.destroy
      redirect_to usuarios_path
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def usuario_params
    params.require(:usuario).permit(:nome, :email, :telefone, :data_nascimento, :password, :password_confirmation, :tipo)
  end
end