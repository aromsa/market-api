class FavoriteDesigner < ApplicationRecord
  belongs_to :buyer
  belongs_to :designer
  # has_many :selected_styles
  # has_many :styles, through: :selected_styles

  # def designer
  #   self.designer
  # end

end
