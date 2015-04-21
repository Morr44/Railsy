FactoryGirl.define do
  factory :admin, class: User do
    
    sequence(:first_name) { |n| "John#{n}"}
    sequence(:last_name) { |n| "Smith#{n}"}
    sequence(:email) { |n| "js#{n}gaa@.com"}
    password 'password'
    admin true
    
  end
end