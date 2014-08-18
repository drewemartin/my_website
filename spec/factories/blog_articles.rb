# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :blog_article do
    body  Faker::Lorem.characters(2000)
    title "MyString"
    publish_now "yes"
    user_id 14
  end
end
