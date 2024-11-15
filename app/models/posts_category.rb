class PostsCategory < ApplicationRecord
  belongs_to :posts, foreign_key: 'posts_id'
  belongs_to :categories, foreign_key: 'categories_id'

  # Validates
  validates :post_id, uniqueness: { scope: :category_id } # To prevent duplicate entries
end
