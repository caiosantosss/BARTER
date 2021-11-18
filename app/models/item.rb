class Item < ApplicationRecord
  belongs_to :user
  # has_many :offerings (this doesnt work)
  has_one_attached :photo

  include PgSearch::Model

  validates :name, presence: true
  validates :description, presence: true, length: {
    minimum: 4,
    maximum: 299,
    tokenizer: lambda { |str| str.scan(/\s+/) },
    too_short: "must have at least 5 words",
    too_long: "must have at most 300 words"
  }

  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }

  def offered_offerings
    Offering.where(posted: self)
  end
end
