json.array!(@id3_tags) do |id3_tag|
  json.extract! id3_tag, :id, :song_title, :artist, :album_title, :track
  json.url id3_tag_url(id3_tag, format: :json)
end
