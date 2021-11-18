class Offering < ApplicationRecord
  belongs_to :offered, class_name: 'Item', foreign_key: :offered_id
  belongs_to :posted, class_name: 'Item', foreign_key: :posted_id
  validates :offered_id, presence: true
  validates :posted_id, presence: true

  def pending?
    status == 'pending'
  end
end
