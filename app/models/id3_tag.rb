class Id3Tag < ActiveRecord::Base
	has_many :genres
	has_many :played_ons
	has_many :musicians, through: :played_ons

	scope :huskers, -> { where artist: 'Husker Du'}
end
