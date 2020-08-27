class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.belongs_to :designer, null: false, foreign_key: true
      t.belongs_to :season, null: false, foreign_key: true

      t.string :name
      t.string :inspo

      t.timestamps
    end
  end
end
