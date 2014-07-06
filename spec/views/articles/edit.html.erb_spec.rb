require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :point_id => 1,
      :serial => 1,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_point_id[name=?]", "article[point_id]"

      assert_select "input#article_serial[name=?]", "article[serial]"

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "textarea#article_content[name=?]", "article[content]"
    end
  end
end
