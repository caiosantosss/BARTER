class Item < ApplicationRecord
  belongs_to :user
  # has_many :offerings (this doesnt work)
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presense: true, length: {
    minimum: 4,
    maximum: 299,
    tokenizer: lambda { |str| str.scan(/\s+/) },
    too_short: "must have at least 5 words",
    too_long: "must have at most 300 words"
  }

  def offered_offerings
    Offering.where(posted: self)
  end

end
