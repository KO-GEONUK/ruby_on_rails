class KosController < ApplicationController
  before_action :set_ko, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]
  # GET /kos or /kos.json
  def index
    @kos = Ko.all
  end

  # GET /kos/1 or /kos/1.json
  def show
  end

  # GET /kos/new
  def new
    @ko = Ko.new
  end

  # GET /kos/1/edit
  def edit
  end

  # POST /kos or /kos.json
  def create
    @ko = Ko.new(ko_params)

    respond_to do |format|
      if @ko.save
        format.html { redirect_to ko_url(@ko), notice: "Ko was successfully created." }
        format.json { render :show, status: :created, location: @ko }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ko.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kos/1 or /kos/1.json
  def update
    respond_to do |format|
      if @ko.update(ko_params)
        format.html { redirect_to ko_url(@ko), notice: "Ko was successfully updated." }
        format.json { render :show, status: :ok, location: @ko }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ko.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kos/1 or /kos/1.json
  def destroy
    @ko.destroy

    respond_to do |format|
      format.html { redirect_to kos_url, notice: "Ko was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ko
      @ko = Ko.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ko_params
      params.require(:ko).permit(:title, :name, :content, :number)
    end
end
