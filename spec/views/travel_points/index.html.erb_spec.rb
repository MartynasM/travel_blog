require 'rails_helper'

RSpec.describe "travel_points/index", :type => :view do
  before(:each) do
    assign(:travel_points, [
      TravelPoint.create!(
        :day_id => 1,
        :serial => 2,
        :longitude => 1.5,
        :latitude => 1.5,
        :name => "Name"
      ),
      TravelPoint.create!(
        :day_id => 1,
        :serial => 2,
        :longitude => 1.5,
        :latitude => 1.5,
        :name => "Name"
      )
    ])
  end

  it "renders a list of travel_points" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
