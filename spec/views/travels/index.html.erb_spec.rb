require 'rails_helper'

RSpec.describe "travels/index", :type => :view do
  before(:each) do
    assign(:travels, [
      Travel.create!(
        :name => "Name",
        :description => "MyText",
        :photo_id => 1
      ),
      Travel.create!(
        :name => "Name",
        :description => "MyText",
        :photo_id => 1
      )
    ])
  end

  it "renders a list of travels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
