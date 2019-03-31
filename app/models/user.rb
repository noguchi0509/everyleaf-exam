class User < ApplicationRecord
  has_many :tasks
  validates :name, presence: true, length: { maximum:30 }
  validates :email, presence: true, length: { maximum:255 }
  validates :password, presence: true, length: { minimum: 6 }
  before_validation { email.downcase! }
  has_secure_password
end
