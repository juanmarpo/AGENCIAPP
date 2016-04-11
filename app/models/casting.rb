class Casting < ActiveRecord::Base

	belongs_to :member

	has_and_belongs_to_many :members
	attr_accessible :title , :description, :paymenyt_tipe, :ubication, :casting_end, :video, :images, :member_id

end
