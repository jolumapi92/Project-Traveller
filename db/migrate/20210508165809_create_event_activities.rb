class CreateEventActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :event_activities do |t|
      t.references :event, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
