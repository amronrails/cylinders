class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :brand_id
      t.string :name, :null => false
      t.integer :position
      t.boolean :visible, :default => false
      t.string :permalink, :null => false
      t.integer :counter, :default => 0
      t.text :description
      t.integer :year

      t.timestamps null: false
    end
    add_attachment :models, :avatar
    add_index("models", "brand_id")
    add_index("models", "permalink")
  end
end
