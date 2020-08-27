class StyleCategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :styles
end
