# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_article do
    body "MyText"
    title "MyString"
    publish_now false
    user_id 1
  end
end
