class User < ApplicationRecord
  has_many :trips
  validates :name, :bio, presence: true
  validates :bio, length: { maximum: 500 }
end
