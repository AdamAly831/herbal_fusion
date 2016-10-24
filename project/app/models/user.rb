class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes
  has_many :comments
  validates :alias, presence: true, length: { minimum: 2 }
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: true, :format => { :with => EMAIL_REGEX }
  validates :password, presence: true, confirmation: true, length: { minimum: 8 }, allow_nil: true
  validates :password_confirmation, presence: true
  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
  validates_date :birthday, presence: true, :before => lambda { 21.years.ago }, :before_message => "You're to young for this bro"
  acts_as_liker
end
