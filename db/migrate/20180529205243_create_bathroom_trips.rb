class CreateBathroomTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :bathroom_trips do |t|
      t.integer :user_id
      t.string :track_id

      t.timestamps
    end
  end
end
