class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 10}
  validates :password, presence: true
end
