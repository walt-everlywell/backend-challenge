FactoryBot.define do
  
  factory :member do
    id {Faker::Number.unique.number(digits: 6)}
    first_name {Faker::Name.unique.first_name}
    last_name {Faker::Name.unique.last_name}
    url {"http://#{Faker::Company.unique.name}.com"}
    short_url {"http://shrturl.us/#{Faker::Alphanumeric.alpha(number: 10)}"}
  end

  factory :header do
    member_id {create(:member).id}
    tag {"H#{Faker::Number.between(from: 1, to: 3)}"}
    header {Faker::Job.title}
  end

  factory :friendshp do
    member_id {0}
    friend_id {0}
  end
end