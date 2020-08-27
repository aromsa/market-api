class CreateStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.belongs_to :collection, null: false, foreign_key: true
      t.belongs_to :delivery, null: false, foreign_key: true
      t.belongs_to :style_category, null: false, foreign_key: true

      t.string :upc
      t.string :style_name
      t.integer :style_number
      t.string :color
      t.string :size
      t.string :fabric
      t.integer :wholesale
      t.integer :retail

      t.timestamps
    end
  end
end
