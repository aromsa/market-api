class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.belongs_to :style, null: false, foreign_key: true
      t.string :img

      t.timestamps
    end
  end
end
