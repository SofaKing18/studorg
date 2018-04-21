class ChemestriesController < ApplicationController
  before_action :set_chemestry, only: [:show, :edit, :update, :destroy]

  # GET /chemestries
  # GET /chemestries.json
  def index
    @chemestries = current_user.chemestries
  end

  # GET /chemestries/1
  # GET /chemestries/1.json
  def show
  end

  # GET /chemestries/new
  def new
    @chemestry = Chemestry.new
  end

  # GET /chemestries/1/edit
  def edit
  end

  # POST /chemestries
  # POST /chemestries.json
  def create
    @chemestry = Chemestry.new(chemestry_params)

    respond_to do |format|
      if @chemestry.save
        format.html { redirect_to chemestries_path, notice: t('chemestry.created') }
        format.json { render :show, status: :created, location: @chemestry }
      else
        format.html { render :new }
        format.json { render json: @chemestry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chemestries/1
  # PATCH/PUT /chemestries/1.json
  def update
    respond_to do |format|
      if @chemestry.update(chemestry_params)
        format.html { redirect_to chemestries_path, notice: t('chemestry.updated') }
        format.json { render :show, status: :ok, location: @chemestry }
      else
        format.html { render :edit }
        format.json { render json: @chemestry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chemestries/1
  # DELETE /chemestries/1.json
  def destroy
    @chemestry.destroy
    respond_to do |format|
      format.html { redirect_to chemestries_url, notice: 'Chemestry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chemestry
      @chemestry = Chemestry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chemestry_params
      params.require(:chemestry).permit(:user_id, :name, :start_date, :end_date)
    end
end
