class AddReferencesToActivities < ActiveRecord::Migration[6.0]
  def change
    add_reference :activities, :location, foreign_key: true, null: false
  end
end
