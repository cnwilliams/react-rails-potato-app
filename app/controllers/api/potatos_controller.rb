class Api::PotatosController < ApplicationController
  before_action :set_api_potato, only: [:show, :edit, :update, :destroy]

  # GET /api/potatos
  # GET /api/potatos.json
  def index
    @api_potatos = Api::Potato.all
  end

  # GET /api/potatos/1
  # GET /api/potatos/1.json
  def show
    if request.xhr?
      render json:  @api_potato
    end
  end

  # GET /api/potatos/new
  def new
    @api_potato = Api::Potato.new
  end

  # GET /api/potatos/1/edit
  def edit
  end

  # POST /api/potatos
  # POST /api/potatos.json
  def create
    @api_potato = Api::Potato.new(api_potato_params)

    respond_to do |format|
      if @api_potato.save
        format.html { redirect_to @api_potato, notice: 'Potato was successfully created.' }
        format.json { render :show, status: :created, location: @api_potato }
      else
        format.html { render :new }
        format.json { render json: @api_potato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/potatos/1
  # PATCH/PUT /api/potatos/1.json
  def update
    respond_to do |format|
      if @api_potato.update(api_potato_params)
        format.html { redirect_to @api_potato, notice: 'Potato was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_potato }
      else
        format.html { render :edit }
        format.json { render json: @api_potato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/potatos/1
  # DELETE /api/potatos/1.json
  def destroy
    @api_potato.destroy
    respond_to do |format|
      format.html { redirect_to api_potatos_url, notice: 'Potato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_potato
      @api_potato = Api::Potato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_potato_params
      params.require(:api_potato).permit(:name, :variety, :image)
    end
end
