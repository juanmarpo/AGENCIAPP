class CreateCastings < ActiveRecord::Migration
  def change
    create_table :castings do |t|
      t.string :title
      t.string :description
      t.string :payment_type
      t.string :ubication
      t.date :casting_end
      t.string :video
      t.string :images
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
