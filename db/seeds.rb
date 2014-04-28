# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Id3Tag.create [{:song_title => "New Day Rising", :artist => "Husker Du",
	    :album_title => "New Day Rising", :track => "1",
	    :path => ""},
	    {:song_title => "Rael Rean", :artist => "999",
	    :album_title => "Separates", :track => "2",
	    :path => ""},
	    {:song_title => "Momentum", :artist => "Aimee Mann",
	    :album_title => "Magnolia", :track => "1",
	    :path => ""}]

Genre.create [{:genre => "Post Punk", :id3_tag_id => 1},
              {:genre => "Punk", :id3_tag_id => 2},
              {:genre => "Singer-songwriter", :id3_tag_id => 3}]

Musician.create [{:name => "Bob Mould", :instrument => "Guitar"},
                 {:name => "Bob Mould", :instrument => "Vocals"},
                 {:name => "Grant Hart", :instrument => "Drums"},
                 {:name => "Grant Hart", :instrument => "Vocals"},
                 {:name => "Greg Norton", :instrument => "Bass"},
                 {:name => "Nick Cash", :instrument => "Guitar"},
                 {:name => "Nick Cash", :instrument => "Vocals"},
                 {:name => "Guy Days", :instrument => "Vocals"},
                 {:name => "Guy Days", :instrument => "Guitar"},
                 {:name => "Jon Watson", :instrument => "Bass"},
                 {:name => "Pablo LaBritain", :instrument => "Drums"},
                 {:name => "Aimee Mann", :instrument => "Vocals"},
                 {:name => "Aimee Mann", :instrument => "Guitar"}]

PlayedOn.create [{:id3_tag_id => 1, :musician_id => 1},
	               {:id3_tag_id => 1, :musician_id => 2},
	               {:id3_tag_id => 1, :musician_id => 3},
	               {:id3_tag_id => 1, :musician_id => 4},
	               {:id3_tag_id => 1, :musician_id => 5},
	               {:id3_tag_id => 2, :musician_id => 6},
	               {:id3_tag_id => 2, :musician_id => 7},
	               {:id3_tag_id => 2, :musician_id => 8},
	               {:id3_tag_id => 2, :musician_id => 9},
	               {:id3_tag_id => 2, :musician_id => 10},
	               {:id3_tag_id => 2, :musician_id => 11},
	               {:id3_tag_id => 3, :musician_id => 12},
	               {:id3_tag_id => 3, :musician_id => 13}]              
