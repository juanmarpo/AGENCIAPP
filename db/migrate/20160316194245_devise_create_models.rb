class DeviseCreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      ## Database authenticatable
      t.string :name
      t.string :last_name

      ## personal dates
      t.string :display_name
      t.integer :phone
      t.date :date_of_birth
      t.string :city
      t.string :about

      ## model data
      t.string :gender
      t.integer :ethnicity_id
      t.integer :categories_id
      t.integer :hair_id
      t.integer :eyes_id

      ## model measures
      t.integer :height
      t.integer :bust
      t.integer :waist
      t.integer :hips
      t.integer :shoes

      ## model disciplines
      t.integer :disciplines_id
     





      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable

      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :models, :email,                unique: true
    add_index :models, :reset_password_token, unique: true
    
  end
end
