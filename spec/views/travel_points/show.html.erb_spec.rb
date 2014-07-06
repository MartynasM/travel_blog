require 'rails_helper'

RSpec.describe "travel_points/show", :type => :view do
  before(:each) do
    @travel_point = assign(:travel_point, TravelPoint.create!(
      :day_id => 1,
      :serial => 2,
      :longitude => 1.5,
      :latitude => 1.5,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Name/)
  end
end
