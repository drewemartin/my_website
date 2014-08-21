# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :letter do
    name "MyString"
    email "MyString"
    subject "MyString"
    body "MyString"
  end
end
