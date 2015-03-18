FactoryGirl.define do
  factory :category do
    name {Faker::Lorem.word}
  end

  factory :project do
    title { Faker::Lorem.word }
    association :category
    association :user
  end

  factory :user do
    pass = Faker::Internet.password
    username {Faker::Name.first_name}
    email {Faker::Internet.email}
    password {pass}
    password_confirmation {pass}
  end

end
