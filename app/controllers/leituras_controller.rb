class LeiturasController < ApplicationController
  before_action :set_leitura, only: [:show, :update, :destroy]

  # GET /leituras
  def index
    @leituras = Leitura.order('updated_at DESC').limit(50).pluck(:valor)

    render json: @leituras
  end

  # GET /leituras/1
  def show
    render json: @leitura
  end

  # POST /leituras
  def create
    @leitura = Leitura.new(leitura_params)

    if @leitura.save
      render json: @leitura, status: :created, location: @leitura
    else
      render json: @leitura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leituras/1
  def update
    if @leitura.update(leitura_params)
      render json: @leitura
    else
      render json: @leitura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leituras/1
  def destroy
    @leitura.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leitura
      @leitura = Leitura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def leitura_params
      params.permit(:valor)
    end
end
