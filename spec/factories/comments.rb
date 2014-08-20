# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :comment do
    body Faker::Lorem.characters(299)
    email Faker::Internet.email
    name "joe shmoe"
    blog_article_id 1
  end
end
