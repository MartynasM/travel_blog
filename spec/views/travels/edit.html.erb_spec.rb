require 'rails_helper'

RSpec.describe "travels/edit", :type => :view do
  before(:each) do
    @travel = assign(:travel, Travel.create!(
      :name => "MyString",
      :description => "MyText",
      :photo_id => 1
    ))
  end

  it "renders the edit travel form" do
    render

    assert_select "form[action=?][method=?]", travel_path(@travel), "post" do

      assert_select "input#travel_name[name=?]", "travel[name]"

      assert_select "textarea#travel_description[name=?]", "travel[description]"

      assert_select "input#travel_photo_id[name=?]", "travel[photo_id]"
    end
  end
end
