class User < ApplicationRecord
  has_secure_password
  has_many :trips
  validates :username, :bio, presence: true
  validates :bio, length: { maximum: 500 }

end
