class ArealizarsController < ApplicationController
  before_action :set_arealizar, only: [:show, :edit, :update, :destroy]

  # GET /arealizars
  # GET /arealizars.json
  def index
    @arealizars = Arealizar.all
  end

  # GET /arealizars/1
  # GET /arealizars/1.json
  def show
  end

  # GET /arealizars/new
  def new
    @arealizar = Arealizar.new
  end

  # GET /arealizars/1/edit
  def edit
  end

  # POST /arealizars
  # POST /arealizars.json
  def create
    @arealizar = Arealizar.new(arealizar_params)

    respond_to do |format|
      if @arealizar.save
        format.html { redirect_to @arealizar, notice: 'Arealizar was successfully created.' }
        format.json { render :show, status: :created, location: @arealizar }
      else
        format.html { render :new }
        format.json { render json: @arealizar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arealizars/1
  # PATCH/PUT /arealizars/1.json
  def update
    respond_to do |format|
      if @arealizar.update(arealizar_params)
        format.html { redirect_to @arealizar, notice: 'Arealizar was successfully updated.' }
        format.json { render :show, status: :ok, location: @arealizar }
      else
        format.html { render :edit }
        format.json { render json: @arealizar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arealizars/1
  # DELETE /arealizars/1.json
  def destroy
    @arealizar.destroy
    respond_to do |format|
      format.html { redirect_to arealizars_url, notice: 'Arealizar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arealizar
      @arealizar = Arealizar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arealizar_params
      params.require(:arealizar).permit(:descripcion, :fecha, :tiempo)
    end
end
