class LectureHallsController < ApplicationController
  before_action :set_lecture_hall, only: [:show, :edit, :update, :destroy]

  # GET /lecture_halls
  # GET /lecture_halls.json
  def index
    @lecture_halls = current_user.lecture_halls
  end

  # GET /lecture_halls/1
  # GET /lecture_halls/1.json
  def show
  end

  # GET /lecture_halls/new
  def new
    @lecture_hall = LectureHall.new
  end

  # GET /lecture_halls/1/edit
  def edit
  end

  # POST /lecture_halls
  # POST /lecture_halls.json
  def create
    @lecture_hall = LectureHall.new(lecture_hall_params)

    respond_to do |format|
      if @lecture_hall.save
        format.html { redirect_to lecture_halls_path, notice: t('lecture_hall.created') }
        format.json { render :show, status: :created, location: @lecture_hall }
      else
        format.html { render :new }
        format.json { render json: @lecture_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecture_halls/1
  # PATCH/PUT /lecture_halls/1.json
  def update
    respond_to do |format|
      if @lecture_hall.update(lecture_hall_params)
        format.html { redirect_to lecture_halls_path, notice: t('lecture_hall.updated') }
        format.json { render :show, status: :ok, location: @lecture_hall }
      else
        format.html { render :edit }
        format.json { render json: @lecture_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecture_halls/1
  # DELETE /lecture_halls/1.json
  def destroy
    @lecture_hall.destroy
    respond_to do |format|
      format.html { redirect_to lecture_halls_url, notice: 'Lecture hall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture_hall
      @lecture_hall = LectureHall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecture_hall_params
      params.require(:lecture_hall).permit(:user_id, :name, :description)
    end
end
