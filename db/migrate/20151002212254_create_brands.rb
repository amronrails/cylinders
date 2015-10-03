class CreateBrands < ActiveRecord::Migration
  def change
    
    create_table :brands do |t|
      t.string :name, :null => false
      t.integer :position
      t.boolean :visible, :default => false
      t.string :permalink, :null =>false
      t.integer :counter, :default => 0
      t.text :description

      t.timestamps null: false
    end
    add_attachment :brands, :icon
    add_index("brands",:permalink)
  end
end
