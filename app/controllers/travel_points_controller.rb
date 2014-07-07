class TravelPointsController < ApplicationController
  before_action :set_day
  before_action :set_travel_point, only: [:show, :edit, :update, :destroy]

  # GET /travel_points
  # GET /travel_points.json
  def index
    @travel_points = @day.travel_points.ordered
  end

  # GET /travel_points/1
  # GET /travel_points/1.json
  def show
  end

  # GET /travel_points/new
  def new
    @travel_point = TravelPoint.new
    @travel_point.serial = @day.travel_points.select("max(serial) as serial").first.serial.to_i + 1
    @travel_point.day = @day
  end

  # GET /travel_points/1/edit
  def edit
  end

  # POST /travel_points
  # POST /travel_points.json
  def create
    @travel_point = TravelPoint.new(travel_point_params)
    @travel_point.day = @day


    respond_to do |format|
      if @travel_point.save
        format.html { redirect_to day_travel_points_path(@day), notice: 'Travel point was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /travel_points/1
  # PATCH/PUT /travel_points/1.json
  def update
    respond_to do |format|
      if @travel_point.update(travel_point_params)
        format.html { redirect_to day_travel_points_path(@day), notice: 'Travel point was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /travel_points/1
  # DELETE /travel_points/1.json
  def destroy
    @travel_point.destroy
    respond_to do |format|
      format.html { redirect_to day_travel_points_path(@day), notice: 'Travel point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_day
      @day = Day.find(params[:day_id])
    end

    def set_travel_point
      @travel_point = TravelPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_point_params
      params.require(:travel_point).permit(:day_id, :serial, :longitude, :latitude, :name)
    end
end
