class Item < ApplicationRecord
  belongs_to :user
  # has_many :offerings (this doesnt work)
  has_one_attached :photo

  def offered_offerings
    Offering.where(posted: self)
  end
end
