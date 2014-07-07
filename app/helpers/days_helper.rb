module DaysHelper
  def correct_url(params)
    Rails.logger.debug "-------------------------------------"
    Rails.logger.debug params[:action]
    if params[:action] == 'edit'
      travel_day_path(@travel, @day)
    else
      travel_days_path(@travel)
    end
  end
end
