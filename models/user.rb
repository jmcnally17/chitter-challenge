class User < ActiveRecord::Base
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { in: 8..20 }
end
