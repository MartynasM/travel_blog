require 'rails_helper'

RSpec.describe "days/index", :type => :view do
  before(:each) do
    assign(:days, [
      Day.create!(
        :travel_id => 1,
        :serial => 2,
        :name => "Name"
      ),
      Day.create!(
        :travel_id => 1,
        :serial => 2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of days" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
