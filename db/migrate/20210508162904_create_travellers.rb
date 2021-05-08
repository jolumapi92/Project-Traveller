class CreateTravellers < ActiveRecord::Migration[6.0]
  def change
    create_table :travellers do |t|
        t.string :name
        t.integer :age
        t.string :gender
        t.string :nationality

        t.timestamps
    end
  end
end
