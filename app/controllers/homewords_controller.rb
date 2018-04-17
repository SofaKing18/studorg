class HomewordsController < ApplicationController
  before_action :set_homeword, only: [:show, :edit, :update, :destroy]

  # GET /homewords
  # GET /homewords.json
  def index
    @homewords = current_user.homewords
  end

  # GET /homewords/1
  # GET /homewords/1.json
  def show
  end

  # GET /homewords/new
  def new
    @homeword = Homeword.new
  end

  # GET /homewords/1/edit
  def edit
  end

  # POST /homewords
  # POST /homewords.json
  def create
    @homeword = Homeword.new(homeword_params)

    respond_to do |format|
      if @homeword.save
        format.html { redirect_to @homeword, notice: 'Homeword was successfully created.' }
        format.json { render :show, status: :created, location: @homeword }
      else
        format.html { render :new }
        format.json { render json: @homeword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homewords/1
  # PATCH/PUT /homewords/1.json
  def update
    respond_to do |format|
      if @homeword.update(homeword_params)
        format.html { redirect_to @homeword, notice: 'Homeword was successfully updated.' }
        format.json { render :show, status: :ok, location: @homeword }
      else
        format.html { render :edit }
        format.json { render json: @homeword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homewords/1
  # DELETE /homewords/1.json
  def destroy
    @homeword.destroy
    respond_to do |format|
      format.html { redirect_to homewords_url, notice: 'Homeword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homeword
      @homeword = Homeword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homeword_params
      params.require(:homeword).permit(:user_id, :description, :deadline, :subject_id)
    end
end
