require 'rails_helper'

RSpec.describe "blog_articles/edit", :type => :view do
  before(:each) do
    @blog_article = assign(:blog_article, BlogArticle.create!(
      :body => "MyText",
      :title => "MyString",
      :publish_now => false,
      :user_id => 1
    ))
  end

  it "renders the edit blog_article form" do
    render

    assert_select "form[action=?][method=?]", blog_article_path(@blog_article), "post" do

      assert_select "textarea#blog_article_body[name=?]", "blog_article[body]"

      assert_select "input#blog_article_title[name=?]", "blog_article[title]"

      assert_select "input#blog_article_publish_now[name=?]", "blog_article[publish_now]"

      assert_select "input#blog_article_user_id[name=?]", "blog_article[user_id]"
    end
  end
end
