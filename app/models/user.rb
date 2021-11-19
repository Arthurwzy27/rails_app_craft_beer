class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, dependent: :destroy
  has_many :factories
  has_many :locations
  has_many :recieved_bookings, through: :factories, source: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
