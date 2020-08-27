class Collection < ApplicationRecord
  belongs_to :designer
  belongs_to :season
  has_many :styles
  has_many :deliveries, through: :styles


  def collection_styles 
    self.styles
  end

end
