require 'rails_helper'

RSpec.describe "letters/index", :type => :view do
  before(:each) do
    assign(:letters, [
      Letter.create!(
        :name => "Name",
        :email => "Email",
        :subject => "Subject",
        :body => "Body"
      ),
      Letter.create!(
        :name => "Name",
        :email => "Email",
        :subject => "Subject",
        :body => "Body"
      )
    ])
  end

  it "renders a list of letters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
