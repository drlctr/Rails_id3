require 'spec_helper'

describe "Id3Tags" do
  describe "GET /id3_tags" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      
      get id3_tags_path
      response.status.should be(302)  #This is changed now that I have auth.  It redirects
      																#to sign in page.
    end
  end
end
