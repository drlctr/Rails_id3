require 'spec_helper'

describe "id3_tags/new" do
  before(:each) do
    assign(:id3_tag, stub_model(Id3Tag,
      :song_title => "MyString",
      :artist => "MyString",
      :album_title => "MyString",
      :track => "MyString"
    ).as_new_record)
  end

  it "renders new id3_tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", id3_tags_path, "post" do
      assert_select "input#id3_tag_song_title[name=?]", "id3_tag[song_title]"
      assert_select "input#id3_tag_artist[name=?]", "id3_tag[artist]"
      assert_select "input#id3_tag_album_title[name=?]", "id3_tag[album_title]"
      assert_select "input#id3_tag_track[name=?]", "id3_tag[track]"
    end
  end
end
