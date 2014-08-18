require 'rails_helper'

RSpec.describe "blog_articles/show", :type => :view do
  before(:each) do
    @blog_article = assign(:blog_article, BlogArticle.create!(
      :body => "MyText",
      :title => "Title",
      :publish_now => false,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
