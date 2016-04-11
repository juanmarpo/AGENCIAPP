class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


has_many :castings


def name_all
     name + " " + last_name

   end

  validates :name, :last_name, :email, :password, :password_confirmation, presence: true




end
