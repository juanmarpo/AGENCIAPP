class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_type
      t.string :name
      t.string :last_name
      t.string :diplay_name
      t.string :phone
      t.date :date_of_birth
      t.string :city
      t.string :about
      t.string :gender
      t.integer :ethnicity_id
      t.integer :categories_id
      t.integer :hair_id
      t.integer :eyes_id
      t.integer :heigth
      t.integer :bust
      t.integer :waist
      t.integer :hips
      t.integer :shoes
      t.integer :disciplines_id
      t.string :email

      t.timestamps null: false
    end
  end
end
