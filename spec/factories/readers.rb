FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
  factory :reader do
    email
    password "123123123"
    password_confirmation { "123123123" } 
  end
end
