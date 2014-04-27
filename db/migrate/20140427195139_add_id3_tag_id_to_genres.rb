class AddId3TagIdToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :id3_tag_id, :integer
  end
end
