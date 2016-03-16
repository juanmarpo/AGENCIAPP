class AddModelIdToStatuses < ActiveRecord::Migration
  def change

  	add_column :statuses, :model_id, :integer
  	add_index :statuses, :model_id
  	remove_column :statuses, :nombre

  end
end
