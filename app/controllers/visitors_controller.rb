class VisitorsController < ApplicationController
	
	def new
		@player = Player.new
		flash.now[:notice] = 'Have Fun!'
	end


end