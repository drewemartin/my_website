require 'rails_helper'

RSpec.describe "blog_articles/index", :type => :view do
  before(:each) do
    assign(:blog_articles, [
      BlogArticle.create!(
        :body => "MyText",
        :title => "Title",
        :publish_now => false,
        :user_id => 1
      ),
      BlogArticle.create!(
        :body => "MyText",
        :title => "Title",
        :publish_now => false,
        :user_id => 1
      )
    ])
  end

  it "renders a list of blog_articles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
