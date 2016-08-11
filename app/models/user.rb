class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: EMAIL_REGEX
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :programs, dependent: :destroy
end
