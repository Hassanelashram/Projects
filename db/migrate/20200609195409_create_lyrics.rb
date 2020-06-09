class CreateLyrics < ActiveRecord::Migration[6.0]
  def change
    create_table :lyrics do |t|
      t.string :artist
      t.string :song
      t.text :lyrics

      t.timestamps
    end
  end
end
