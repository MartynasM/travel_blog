require 'rails_helper'

RSpec.describe "articles/new", :type => :view do
  before(:each) do
    assign(:article, Article.new(
      :point_id => 1,
      :serial => 1,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_point_id[name=?]", "article[point_id]"

      assert_select "input#article_serial[name=?]", "article[serial]"

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "textarea#article_content[name=?]", "article[content]"
    end
  end
end
