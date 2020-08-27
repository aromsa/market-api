class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :start, :end
  has_many :styles
end
