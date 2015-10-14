class CreateCarPrices < ActiveRecord::Migration
  def change
    create_table :car_prices do |t|
      t.integer :agent_id
      t.integer :car_id
      t.integer :price

      t.timestamps null: false
    end
    add_index :car_prices, ["agent_id","car_id"]
  end
end
