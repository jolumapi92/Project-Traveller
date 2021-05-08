class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :start
      t.date :end
      t.string :hotel
      t.string :country
      t.string :city
      t.string :transport
      t.integer :occupants
      t.references :traveller, null: false, foreign_key: true
      t.references :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
