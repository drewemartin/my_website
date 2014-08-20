require 'rails_helper'

RSpec.describe "comments/edit", :type => :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :body => "MyText",
      :email => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_email[name=?]", "comment[email]"

      assert_select "input#comment_name[name=?]", "comment[name]"
    end
  end
end
