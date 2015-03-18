FactoryGirl.define do
  factory :category do
    name {Faker::Lorem.word}
  end
  
  factory :project do
    title { Faker::Lorem.word }
    association :category
  end
end
