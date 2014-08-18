# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "drew.e.martin@gmail.com"
    password "drewsite88"
    password_confirmation "drewsite88"
  end
end
