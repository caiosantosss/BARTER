class Item < ApplicationRecord
  belongs_to :user
  has_many :offerings
  has_one_attached :photo
end
