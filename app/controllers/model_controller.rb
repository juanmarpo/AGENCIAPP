class ModelController < ApplicationController

	def profile
		username = params[:display_name]
		@model = Model.find_by(name: username)
	end

	 def edit
  end

def update
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @status }
      else
        format.html { render :edit }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end
  
end