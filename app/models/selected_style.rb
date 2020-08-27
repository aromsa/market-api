class SelectedStyle < ApplicationRecord
  belongs_to :buyer
  belongs_to :style
  belongs_to :favorite_designer

end
