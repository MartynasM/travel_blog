require 'rails_helper'

RSpec.describe "TravelPoints", :type => :request do
  describe "GET /travel_points" do
    it "works! (now write some real specs)" do
      get travel_points_path
      expect(response.status).to be(200)
    end
  end
end
