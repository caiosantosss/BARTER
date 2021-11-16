class Offering < ApplicationRecord
  belongs_to :offered, class_name: 'Item', foreign_key: :offered_id
  belongs_to :posted, class_name: 'Item', foreign_key: :posted_id
  validates :offered_id, presense: true
  validates :posted_id, presense: true
end
