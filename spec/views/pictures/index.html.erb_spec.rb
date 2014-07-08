require 'rails_helper'

RSpec.describe "pictures/index", :type => :view do
  before(:each) do
    assign(:pictures, [
      Picture.create!(
        :title => "Title"
      ),
      Picture.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of pictures" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
