class CreateSelectedStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_styles do |t|
      t.belongs_to :buyer, null: false, foreign_key: true
      t.belongs_to :style, null: false, foreign_key: true
      # t.belongs_to :favorite_designer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
