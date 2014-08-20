require 'rails_helper'

RSpec.describe "comments/show", :type => :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :body => "MyText",
      :email => "Email",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Name/)
  end
end
