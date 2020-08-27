class Designer < ApplicationRecord
  belongs_to :category
  has_many :favorite_designers
  has_many :collections
  has_many :styles, through: :collections
  validates_uniqueness_of :username
  # has_one_attached :img
  has_secure_password
end
