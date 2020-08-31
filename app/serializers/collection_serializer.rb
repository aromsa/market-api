class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :inspo, :collection_styles #this will give the Designer styles too
  # has_one :designer
  has_many :styles
  # has_one :season
end
