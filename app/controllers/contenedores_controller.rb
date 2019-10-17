class ContenedoresController < ApplicationController
  before_action :set_contenedore, only: [:show, :update, :destroy]

  # GET /contenedores
  def index
    @contenedores = Contenedore.all

    render json: @contenedores
  end

  # GET /contenedores/1
  def show
    render json: @contenedore
  end

  # POST /contenedores
  def create
    @contenedore = Contenedore.new(contenedore_params)

    if @contenedore.save
      render json: @contenedore, status: :created, location: @contenedore
    else
      render json: @contenedore.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contenedores/1
  def update
    if @contenedore.update(contenedore_params)
      render json: @contenedore
    else
      render json: @contenedore.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contenedores/1
  def destroy
    @contenedore.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contenedore
      @contenedore = Contenedore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contenedore_params
      params.require(:contenedore).permit(:cantidadKg, :fecha, :hora)
    end
end
