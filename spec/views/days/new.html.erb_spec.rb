require 'rails_helper'

RSpec.describe "days/new", :type => :view do
  before(:each) do
    assign(:day, Day.new(
      :travel_id => 1,
      :serial => 1,
      :name => "MyString"
    ))
  end

  it "renders new day form" do
    render

    assert_select "form[action=?][method=?]", days_path, "post" do

      assert_select "input#day_travel_id[name=?]", "day[travel_id]"

      assert_select "input#day_serial[name=?]", "day[serial]"

      assert_select "input#day_name[name=?]", "day[name]"
    end
  end
end
