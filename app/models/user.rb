class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniquiness: true
  validates :password, length: { minimum: 6 }
end
