class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :position
      t.boolean :visible
      t.integer :views
      t.string :adress
      t.text :details
      t.string :phone

      t.timestamps null: false
    end
  end
end
