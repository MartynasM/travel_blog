require 'rails_helper'

RSpec.describe "travels/new", :type => :view do
  before(:each) do
    assign(:travel, Travel.new(
      :name => "MyString",
      :description => "MyText",
      :photo_id => 1
    ))
  end

  it "renders new travel form" do
    render

    assert_select "form[action=?][method=?]", travels_path, "post" do

      assert_select "input#travel_name[name=?]", "travel[name]"

      assert_select "textarea#travel_description[name=?]", "travel[description]"

      assert_select "input#travel_photo_id[name=?]", "travel[photo_id]"
    end
  end
end
