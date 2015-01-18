FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "test_email#{n}@test.com"}
    password '123456789'
  end

end
