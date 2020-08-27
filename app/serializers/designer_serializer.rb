class DesignerSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :collections
  has_one :category
end


  # Can I do this?:  NO
  # has_many :styles, through: :collections
