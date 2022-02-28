class User < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts

  validates :password, presence: true, length: { in: 4..20 }
end
