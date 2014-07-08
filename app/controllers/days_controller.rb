class DaysController < ApplicationController
  before_action :set_travel
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  def index
    @days = @travel.days.ordered
  end

  def new
    @day = Day.new
    @day.serial = Day.select("max(serial) as serial").where(travel: @travel).first.serial.to_i + 1
    @day.name = "Day #{@day.serial}"
  end

  def edit
  end

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

  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html {redirect_to travel_days_path(@travel), notice: 'Day was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

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

    def day_params
      params.require(:day).permit(:travel_id, :serial, :name)
    end
end
