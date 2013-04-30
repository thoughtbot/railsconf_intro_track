FactoryGirl.define do
  sequence(:name) { |n| 'user#{n}' }
  sequence(:email) { |n| 'email#{n}@example.com' }

  factory :user do
    name
    email
  end
end
