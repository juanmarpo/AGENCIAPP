class ModelController < ApplicationController

	def profile
		username = params[:display_name]

		a = params[:display_name].split("-")
		nomber = a[0]
		appleido = a[1]
		@model = Model.find_by(name: username, lastname: lastname)
	end
end