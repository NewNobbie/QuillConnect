class Category < ApplicationRecord
  belongs_to :admin, class_name: 'User', foreign_key: 'admin_id', optional: true

  has_many :posts_categories, dependent: :destroy
  has_many :posts, through: :posts_categories

  #validates :category_name, presence: true, length { maximum: 50 }
end
