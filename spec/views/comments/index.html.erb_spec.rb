require 'rails_helper'

RSpec.describe "comments/index", :type => :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :body => "MyText",
        :email => "Email",
        :name => "Name"
      ),
      Comment.create!(
        :body => "MyText",
        :email => "Email",
        :name => "Name"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
