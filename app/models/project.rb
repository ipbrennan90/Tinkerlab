class Project < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :posts
end
