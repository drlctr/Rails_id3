module HomeHelper

	def pick_guitar

		if @color_white
			@image = 'FlyingVW.jpg' 
		else
			@image = 'FlyingVN.jpg'
		end
	end

end
