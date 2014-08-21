require 'rails_helper'

RSpec.describe "letters/new", :type => :view do
  before(:each) do
    assign(:letter, Letter.new(
      :name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :body => "MyString"
    ))
  end

  it "renders new letter form" do
    render

    assert_select "form[action=?][method=?]", letters_path, "post" do

      assert_select "input#letter_name[name=?]", "letter[name]"

      assert_select "input#letter_email[name=?]", "letter[email]"

      assert_select "input#letter_subject[name=?]", "letter[subject]"

      assert_select "input#letter_body[name=?]", "letter[body]"
    end
  end
end
