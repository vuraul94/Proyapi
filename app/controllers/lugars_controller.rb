class LugarsController < ApplicationController
  before_action :set_lugar, only: [:show, :update, :destroy, :comments]

  # GET /lugars
  def index
    @lugars = Lugar.all

    render json: @lugars
  end

  def comments
    @commentarios=@lugar.comentarios
    render json: @commentarios
  end

  # GET /lugars/1
  def show
    render json: @lugar
  end

  # POST /lugars
  def create
    @lugar = Lugar.new(lugar_params)

    if @lugar.save
      render json: @lugar, status: :created, location: @lugar
    else
      render json: @lugar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lugars/1
  def update
    if @lugar.update(lugar_params)
      render json: @lugar
    else
      render json: @lugar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lugars/1
  def destroy
    @lugar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lugar
      @lugar = Lugar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lugar_params
      params.require(:lugar).permit(:nombre, :descripcion, :foto)
    end
end
