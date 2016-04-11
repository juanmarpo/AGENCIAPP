class CastingsController < InheritedResources::Base

  private

    def casting_params
      params.require(:casting).permit(:title, :description, :payment_type, :ubication, :casting_end, :video, :images, :member_id)
    end
end

