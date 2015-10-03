class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :model_id
      t.string :name, :null => false
      t.boolean :visible, :defult => false
      t.string :permalink, :null => false
      t.integer :counter, :default => 0
      t.text :description
      t.integer :position
      t.integer :year

      t.timestamps null: false
    end
    add_attachment :cars, :image
    add_index("cars", "model_id")
    add_index("cars", "permalink")
  end
end
