class Musician < ActiveRecord::Base
	has_many :played_ons
	has_many :id3_tags, through: :played_ons

	scope :singers, -> { where instrument: "Vocals" }
end
