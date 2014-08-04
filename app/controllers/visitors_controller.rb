class VisitorsController < ApplicationController
	
	def new
		@player = Player.new
	end

end