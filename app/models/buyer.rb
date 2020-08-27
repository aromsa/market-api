class Buyer < ApplicationRecord
  has_many :favorite_designers
  has_many :designers, through: :favorite_designers
  has_many :selected_styles
  has_many :styles, through: :selected_styles
  validates_uniqueness_of :username
  has_secure_password

  def fav_designers 
    self.designers
  end
end
