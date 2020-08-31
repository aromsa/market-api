class StyleSerializer < ActiveModel::Serializer
  attributes :id, :upc, :style_name, :style_number, :color, :size, :fabric, :wholesale, :retail
  # has_one :collection
  has_many :selected_styles
  # has_one :delivery
  has_many :images
  # has_one :category
end
