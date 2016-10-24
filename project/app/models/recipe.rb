class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :allergies
  acts_as_likeable
  validates :serving_size, presence: true
  validates :time, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true
  validates :title, presence: true, length: { minimum: 3 }
end
