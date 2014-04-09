class CreateId3Tags < ActiveRecord::Migration
  def change
    create_table :id3_tags do |t|
      t.string :song_title
      t.string :artist
      t.string :album_title
      t.string :track

      t.timestamps
    end
  end
end
