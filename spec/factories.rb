FactoryGirl.define do
  sequence(:name) { |n| "task #{n}" }

  factory :task do
    name

    trait :long_name do
      name 'Hey this is a very long description for this task'
    end
  end
end
