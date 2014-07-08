class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  def index
    @travels = Travel.all
  end

  def show
  end

  def new
    @travel = Travel.new
  end

  def edit
  end

  def create
    @travel = Travel.new(travel_params)

    respond_to do |format|
      if @travel.save
        format.html { redirect_to @travel, notice: 'Travel was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @travel.update(travel_params)
        format.html { redirect_to @travel, notice: 'Travel was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @travel.destroy
    respond_to do |format|
      format.html { redirect_to travels_url, notice: 'Travel was successfully destroyed.' }
    end
  end

  private
    def set_travel
      @travel = Travel.find(params[:id])
    end

    def travel_params
      params.require(:travel).permit(:date, :name, :description, :photo_id)
    end
end
