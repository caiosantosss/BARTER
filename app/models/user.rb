class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :items, dependent: :destroy
  has_many :sent_offers, through: :items
  # has_many :sent_items, through: :sent_offers, source: :offered
  has_many :received_offers, through: :items
  # has_many :received_items, through: :received_offers, source: :posted
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :phone_number, presence: true
  # validates :location (waiting for geocoding)
end
