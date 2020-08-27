class Style < ApplicationRecord
  belongs_to :collection
  belongs_to :delivery
  belongs_to :style_category
  has_many :selected_styles
  has_many :buyers, through: :selected_styles
  has_many :images
  # has_many_attached :img
  # has_one_attached :video
end
