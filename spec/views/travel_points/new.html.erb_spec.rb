require 'rails_helper'

RSpec.describe "travel_points/new", :type => :view do
  before(:each) do
    assign(:travel_point, TravelPoint.new(
      :day_id => 1,
      :serial => 1,
      :longitude => 1.5,
      :latitude => 1.5,
      :name => "MyString"
    ))
  end

  it "renders new travel_point form" do
    render

    assert_select "form[action=?][method=?]", travel_points_path, "post" do

      assert_select "input#travel_point_day_id[name=?]", "travel_point[day_id]"

      assert_select "input#travel_point_serial[name=?]", "travel_point[serial]"

      assert_select "input#travel_point_longitude[name=?]", "travel_point[longitude]"

      assert_select "input#travel_point_latitude[name=?]", "travel_point[latitude]"

      assert_select "input#travel_point_name[name=?]", "travel_point[name]"
    end
  end
end
