class PlayedOn < ActiveRecord::Base
	belongs_to :musician
	belongs_to :id3_tag
end
