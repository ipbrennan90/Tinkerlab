class User < ActiveRecord::Base
  has_many :posts
  has_many :categories, through: :posts
  has_secure_password
end
