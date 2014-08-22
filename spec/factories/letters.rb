# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :letter do
    name "bob"
    email "test@test.com"
    subject "something"
    message "howdy! friends"
  end
end
