class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :age
      t.string :position
      t.string :category
      t.timestamps
    end
  end
end
