class FavoriteDesignerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :buyer
  has_one :designer
  has_many :selected_styles
  # Can I do this?
  # has_many :styles, through: :selected_styles
end
