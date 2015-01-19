FactoryGirl.define do

  factory :post do
    sequence(:title) { |n| "post title #{n}"}
    sequence(:body) { |n| "post body #{n}, hello my name is jacinda"}
  end

end
