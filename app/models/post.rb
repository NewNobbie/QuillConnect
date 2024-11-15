class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  has_many :posts_categories, dependent: :destroy
  has_many :categories, through: :posts_categories

  enum status: { available: 0, pending: 1, banned: 2 }
  

  # Validates 
  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true 
end
  