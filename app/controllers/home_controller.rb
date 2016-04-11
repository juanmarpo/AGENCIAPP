class HomeController < ApplicationController

	def index
	@exist = Model.all 

	end

end
