ActiveAdmin.register Model do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :last_name, :email

 index do |model|
 	selectable_column
 	column :name
 	column :last_name
 	column :email
 end


 form do |f|
 	f.inputs 'Informacion Basica' do
 		f.input :name
 		f.input :last_name
 		f.input :email
 	end	
 	f.actions
 end







#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
