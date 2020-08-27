class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :username, :fav_designers 
  has_many :favorite_designers

  # has_many :designers, through: :favorite_designers  
end
