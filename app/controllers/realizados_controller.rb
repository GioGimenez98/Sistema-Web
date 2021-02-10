class RealizadosController < ApplicationController
  before_action :set_realizado, only: [:show, :edit, :update, :destroy]

  # GET /realizados
  # GET /realizados.json
  def index
    @realizados = Realizado.all
  end

  # GET /realizados/1
  # GET /realizados/1.json
  def show
  end

  # GET /realizados/new
  def new
    @realizado = Realizado.new
    @realizado.tarea_id = params[:id] 
    @titulo = params[:titulo]
    tarea = Tarea.find_by(id: params[:id])
    tarea.estado=true 
    tarea.save
  end

  # GET /realizados/1/edit
  def edit
  end

  # POST /realizados
  # POST /realizados.json
  def create
    @realizado = Realizado.new(realizado_params)

    respond_to do |format|
      if @realizado.save
        format.html { redirect_to @realizado, notice: 'Realizado was successfully created.' }
        format.json { render :show, status: :created, location: @realizado }
      else
        format.html { render :new }
        format.json { render json: @realizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realizados/1
  # PATCH/PUT /realizados/1.json
  def update
    respond_to do |format|
      if @realizado.update(realizado_params)
        format.html { redirect_to @realizado, notice: 'Realizado was successfully updated.' }
        format.json { render :show, status: :ok, location: @realizado }
      else
        format.html { render :edit }
        format.json { render json: @realizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realizados/1
  # DELETE /realizados/1.json
  def destroy
    @realizado.destroy
    respond_to do |format|
      format.html { redirect_to realizados_url, notice: 'Realizado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realizado
      @realizado = Realizado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def realizado_params
      params.require(:realizado).permit(:descripcion, :fecha_ini, :fecha_fina, :tiempo, :tarea_id)
    end
end
