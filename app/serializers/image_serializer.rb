class ImageSerializer < ActiveModel::Serializer
  attributes :id, :img
  # has_one :style
end
