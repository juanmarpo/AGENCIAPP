class MembersController < InheritedResources::Base

  private

    def member_params
      params.require(:member).permit(:member_type, :name, :last_name, :diplay_name, :phone, :date_of_birth, :city, :about, :gender, :ethnicity_id, :categories_id, :hair_id, :eyes_id, :heigth, :bust, :waist, :hips, :shoes, :disciplines_id, :email)
    end
end

