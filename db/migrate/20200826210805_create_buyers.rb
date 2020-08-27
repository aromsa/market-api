class CreateBuyers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyers do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :store
      t.string :title
      t.string :email
      t.string :phone
      t.timestamps
    end
  end
end
