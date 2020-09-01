class DesignerSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :img, :bio, :instagram
  has_many :collections
  has_one :category
end
