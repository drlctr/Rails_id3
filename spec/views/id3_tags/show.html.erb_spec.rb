require 'spec_helper'

describe "id3_tags/show" do
  before(:each) do
    @id3_tag = assign(:id3_tag, stub_model(Id3Tag,
      :song_title => "Song Title",
      :artist => "Artist",
      :album_title => "Album Title",
      :track => "Track"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Song Title/)
    rendered.should match(/Artist/)
    rendered.should match(/Album Title/)
    rendered.should match(/Track/)
  end
end
