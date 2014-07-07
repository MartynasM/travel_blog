module TravelPointsHelper
  def correct_url(params)   
    if params[:action] == 'edit'
      day_travel_point_path(@day, @travel_point)
    else
      day_travel_points_path(@day)
    end
  end
end
