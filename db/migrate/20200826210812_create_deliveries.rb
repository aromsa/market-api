class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
