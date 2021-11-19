class Item < ApplicationRecord
  belongs_to :user
  has_many :sent_offers, class_name: 'Offering', foreign_key: :offered_id
  has_many :received_offers, class_name: 'Offering', foreign_key: :posted_id
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

  def has_accepted_offer?
    Offering.find_by(posted: self, status: 1)
  end
end
