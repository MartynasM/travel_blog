require "rails_helper"

RSpec.describe TravelPointsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/travel_points").to route_to("travel_points#index")
    end

    it "routes to #new" do
      expect(:get => "/travel_points/new").to route_to("travel_points#new")
    end

    it "routes to #show" do
      expect(:get => "/travel_points/1").to route_to("travel_points#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/travel_points/1/edit").to route_to("travel_points#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/travel_points").to route_to("travel_points#create")
    end

    it "routes to #update" do
      expect(:put => "/travel_points/1").to route_to("travel_points#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/travel_points/1").to route_to("travel_points#destroy", :id => "1")
    end

  end
end
