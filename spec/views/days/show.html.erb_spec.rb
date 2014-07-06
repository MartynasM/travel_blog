require 'rails_helper'

RSpec.describe "days/show", :type => :view do
  before(:each) do
    @day = assign(:day, Day.create!(
      :travel_id => 1,
      :serial => 2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
