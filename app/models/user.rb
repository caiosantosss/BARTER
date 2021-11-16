class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :items, dependent: :destroy
  has_many :offerings, through: :items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presense: true, uniqueness: true, length: { minimum: 2 }
  validates :phone_number, presense: true
  # validates :location (waiting for geocoding)
end
