class DaysController < ApplicationController
  before_action :set_travel  
  before_action :set_day, only: [:show, :edit, :update, :destroy]


  # GET /days
  # GET /days.json
  def index
    @days = Day.where(travel_id: params[:travel_id]).all
  end

  # GET /days/1
  # GET /days/1.json
  def show
  end

  # GET /days/new
  def new
    @day = Day.new
    @day.serial = Day.select("max(serial) as serial").where(travel: @travel).first.serial.to_i + 1
    @day.name = "Day #{@day.serial}"
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
    @day = Day.new(day_params)
    @day.travel = @travel

    respond_to do |format|
      if @day.save
        format.html { redirect_to travel_days_path(@travel), notice: 'Day was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html {redirect_to travel_days_path(@travel), notice: 'Day was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to travel_days_path(@travel), notice: 'Day was successfully destroyed.' }
    end
  end

  private
    def set_day
      @day = Day.where(id: params[:id], travel_id: params[:travel_id]).first
    end

    def set_travel
      @travel = Travel.find(params[:travel_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:travel_id, :serial, :name)
    end
end
