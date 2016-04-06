class Model < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :statuses


  def name_all
     name + " " + last_name

   end

  validates :name, :last_name, :email, :password, :password_confirmation, presence: true
  validates :display_name , presence: true, uniqueness: true
  															

end