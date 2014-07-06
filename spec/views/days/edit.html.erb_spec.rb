require 'rails_helper'

RSpec.describe "days/edit", :type => :view do
  before(:each) do
    @day = assign(:day, Day.create!(
      :travel_id => 1,
      :serial => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit day form" do
    render

    assert_select "form[action=?][method=?]", day_path(@day), "post" do

      assert_select "input#day_travel_id[name=?]", "day[travel_id]"

      assert_select "input#day_serial[name=?]", "day[serial]"

      assert_select "input#day_name[name=?]", "day[name]"
    end
  end
end
