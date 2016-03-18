class Status < ActiveRecord::Base
	attr_accessible :contenido , :model_id
	belongs_to :model
end
