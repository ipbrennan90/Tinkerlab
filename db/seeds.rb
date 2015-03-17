Category.delete_all

Project.delete_all
User.delete_all

category = 3.times.map{Category.create!(name: Faker::Lorem.word)}
project = Project.create!(title: Faker::Lorem.word, category_id: category[0].id)
project1 = Project.create!(title: Faker::Lorem.word, category_id: category[1].id)
project2 = Project.create!(title: Faker::Lorem.word, category_id: category[2].id)
