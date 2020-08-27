class CreateDesigners < ActiveRecord::Migration[6.0]
  def change
    create_table :designers do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :img
      t.text :bio
      t.string :instagram
      t.string :email
      t.string :phone
      t.timestamps
    end
  end
end
