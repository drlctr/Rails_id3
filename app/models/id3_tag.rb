class Id3Tag < ActiveRecord::Base
	has_many :genres
	has_many :played_ons
	has_many :musicians, through: :played_ons

	validates :song_title, presence:  true
	validates :track, :numericality => {:greater_than => 0, :only_integer => true}

	scope :huskers, -> { where artist: 'Husker Du'}

	def summary
		result = "On #{album_title}, "
		self.musicians.each do |musician|
			result << "#{musician.name} played #{musician.instrument}, "
		end
		result = result[0...-2]<<'.'
	end

end
