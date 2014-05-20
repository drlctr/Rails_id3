require 'spec_helper'

describe Id3Tag do

	let (:test) {Id3Tag.new(track: 1)}
	let (:test2) {Id3Tag.new(song_title: "Title", track:1)}
	let (:test3) {Id3Tag.new(song_title: "Title", track: -1)}

  context "testing song title validation"  do

  	it "must have a song_title" do
	  	expect(test.valid?).to be_false    
	  end

	  it "correctly validates song title presence" do
		  expect(test2.valid?).to be_true
	  end

	end

	context "Testing the track number" do

		it "must correctly validate a good track number" do
			expect(test2.valid?).to be_true
		end

		it "must have a positive track number" do
			expect(test3.valid?).to be_false
		end
		
	end



# Will hold off on this test until I understand fixtures.
	# it "correctly prints out a summary" do
	# 	test_m = FactoryGirl.create(:musician)
	# 	puts "blah #{test_m.name}"
	# 	fg_test = FactoryGirl.create(:id3_tag)
	# 	expect(fg_test.summary).to eq("On New Day Rising, Bob Mould played Guitar, Bob Mould played Vocals, Grant Hart played Drums, Grant Hart played Vocals, Greg Norton played Bass.")
 #  end

end
