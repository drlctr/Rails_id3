class AddPathToId3Tags < ActiveRecord::Migration
  def change
  	add_column :id3_tags, :path, :string
  end
end
