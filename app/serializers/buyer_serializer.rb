class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :fav_designers 
  has_many :favorite_designers

  # has_many :designers, through: :favorite_designers  
end
