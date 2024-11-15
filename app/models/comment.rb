class Comment < ApplicationRecord
  belong_to :user, optional: true
  belong_to :post

  # Validates
  validates :comment_content, presence: true, length: { maximum: 500 }
  validates :report, presence: true
end
