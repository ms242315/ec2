class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable, :rememberable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :validatable
end
