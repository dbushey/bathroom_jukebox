class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.boolean :explicit

      t.timestamps
    end
  end
end
