class MembersController < InheritedResources::Base

def profile
		username = params[:display_name]
		@model = Model.find_by(name: username)
	end

	 def edit
  end


end

