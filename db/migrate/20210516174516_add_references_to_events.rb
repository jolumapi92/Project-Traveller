class AddReferencesToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :location, foreign_key: true, null: false
  end
end
