require 'rails_helper'

RSpec.describe "travels/show", :type => :view do
  before(:each) do
    @travel = assign(:travel, Travel.create!(
      :name => "Name",
      :description => "MyText",
      :photo_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
