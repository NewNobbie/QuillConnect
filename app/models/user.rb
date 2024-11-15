class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Relationships
  has_many :posts, dependent: :nullify
  has_many :comments, dependent: :nullify
  has_many :categories, foreign_key: :admin_id, dependent: :nullify
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable

  # Roles
  enum role: [:writer, :admin]


  # Validations
  validates :email, presence: true, uniqueness: true
  # validates :user_name, length: {minimum:3, maximum:50}

  
end
