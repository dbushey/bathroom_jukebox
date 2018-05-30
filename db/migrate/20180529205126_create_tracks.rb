class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artists
      t.string :album
      t.boolean :explicit

      t.timestamps
    end
  end
end
