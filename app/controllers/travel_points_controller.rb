class TravelPointsController < ApplicationController
  before_action :set_travel_point, only: [:show, :edit, :update, :destroy]

  # GET /travel_points
  # GET /travel_points.json
  def index
    @travel_points = TravelPoint.all
  end

  # GET /travel_points/1
  # GET /travel_points/1.json
  def show
  end

  # GET /travel_points/new
  def new
    @travel_point = TravelPoint.new
  end

  # GET /travel_points/1/edit
  def edit
  end

  # POST /travel_points
  # POST /travel_points.json
  def create
    @travel_point = TravelPoint.new(travel_point_params)

    respond_to do |format|
      if @travel_point.save
        format.html { redirect_to @travel_point, notice: 'Travel point was successfully created.' }
        format.json { render :show, status: :created, location: @travel_point }
      else
        format.html { render :new }
        format.json { render json: @travel_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_points/1
  # PATCH/PUT /travel_points/1.json
  def update
    respond_to do |format|
      if @travel_point.update(travel_point_params)
        format.html { redirect_to @travel_point, notice: 'Travel point was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_point }
      else
        format.html { render :edit }
        format.json { render json: @travel_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_points/1
  # DELETE /travel_points/1.json
  def destroy
    @travel_point.destroy
    respond_to do |format|
      format.html { redirect_to travel_points_url, notice: 'Travel point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_point
      @travel_point = TravelPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_point_params
      params.require(:travel_point).permit(:day_id, :serial, :longitude, :latitude, :name)
    end
end
