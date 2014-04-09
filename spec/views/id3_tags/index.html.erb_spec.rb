require 'spec_helper'

describe "id3_tags/index" do
  before(:each) do
    assign(:id3_tags, [
      stub_model(Id3Tag,
        :song_title => "Song Title",
        :artist => "Artist",
        :album_title => "Album Title",
        :track => "Track"
      ),
      stub_model(Id3Tag,
        :song_title => "Song Title",
        :artist => "Artist",
        :album_title => "Album Title",
        :track => "Track"
      )
    ])
  end

  it "renders a list of id3_tags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Song Title".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
    assert_select "tr>td", :text => "Album Title".to_s, :count => 2
    assert_select "tr>td", :text => "Track".to_s, :count => 2
  end
end
