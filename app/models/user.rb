class User < ActiveRecord::Base
  has_many :posts
  has_many :projects
  has_many :categories, through: :projects

  has_secure_password
end
