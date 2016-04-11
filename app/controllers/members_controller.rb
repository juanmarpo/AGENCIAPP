class MembersController < InheritedResources::Base

def profile
		username = params[:display_name]
		@member = Member.find_by(name: username)
	end

	 def edit
  end


end


def update
    respond_to do |format|
      if @casting.update(casting_params)
        format.html { redirect_to @casting, notice: 'casting was successfully updated.' }
        format.json { render :show, casting: :ok, location: @casting }
      else
        format.html { render :edit }
        format.json { render json: @casting.errors, casting: :unprocessable_entity }
      end
    end
  end

