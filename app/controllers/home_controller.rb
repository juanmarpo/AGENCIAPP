class HomeController < ApplicationController

	def index
	@exist = Member.all 

	end

end
