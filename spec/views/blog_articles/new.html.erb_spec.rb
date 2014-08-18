require 'rails_helper'

RSpec.describe "blog_articles/new", :type => :view do
  before(:each) do
    assign(:blog_article, BlogArticle.new(
      :body => "MyText",
      :title => "MyString",
      :publish_now => false,
      :user_id => 1
    ))
  end

  it "renders new blog_article form" do
    render

    assert_select "form[action=?][method=?]", blog_articles_path, "post" do

      assert_select "textarea#blog_article_body[name=?]", "blog_article[body]"

      assert_select "input#blog_article_title[name=?]", "blog_article[title]"

      assert_select "input#blog_article_publish_now[name=?]", "blog_article[publish_now]"

      assert_select "input#blog_article_user_id[name=?]", "blog_article[user_id]"
    end
  end
end
