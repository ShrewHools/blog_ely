class Post < ApplicationRecord

  has_many :category_posts
  has_many :categories, through: :category_posts
  has_many :comments, dependent: :destroy
end
