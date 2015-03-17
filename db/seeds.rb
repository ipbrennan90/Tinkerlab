Category.delete_all

Project.delete_all
User.delete_all

category = 3.times.map{Category.create!(name: Faker::Lorem.word)}
project = 3.times.map{}
