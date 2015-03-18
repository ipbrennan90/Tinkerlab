FactoryGirl.define do
  factory :category do
    name {Faker::Lorem.word}
  end

  factory :category_with_projects, parent: :category do
    after(:create) do |category|
      category.projects << FactoryGirl.create_list(:project, rand(1..10), category: category)
    end
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
    after(:create) do |user|
      user.projects << FactoryGirl.create_list(:project, 3, user: user)
    end
  end


end
