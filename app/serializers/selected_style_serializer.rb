class SelectedStyleSerializer < ActiveModel::Serializer
  attributes :id
  has_one :buyer
  has_one :favorite_designer
  has_one :style
end
