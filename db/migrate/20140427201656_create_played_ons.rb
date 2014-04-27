class CreatePlayedOns < ActiveRecord::Migration
  def change
    create_table :played_ons do |t|
      t.integer :musician_id
      t.integer :id3_tag_id

      t.timestamps
    end
  end
end
