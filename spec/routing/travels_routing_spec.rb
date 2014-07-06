require "rails_helper"

RSpec.describe TravelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/travels").to route_to("travels#index")
    end

    it "routes to #new" do
      expect(:get => "/travels/new").to route_to("travels#new")
    end

    it "routes to #show" do
      expect(:get => "/travels/1").to route_to("travels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/travels/1/edit").to route_to("travels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/travels").to route_to("travels#create")
    end

    it "routes to #update" do
      expect(:put => "/travels/1").to route_to("travels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/travels/1").to route_to("travels#destroy", :id => "1")
    end

  end
end
