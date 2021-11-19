class Offering < ApplicationRecord
  belongs_to :offered, class_name: 'Item', foreign_key: :offered_id
  belongs_to :posted, class_name: 'Item', foreign_key: :posted_id
  validates :offered_id, presence: true
  validates :posted_id, presence: true
  validates :status, presence: true
  enum status: { pending: 0, accepted: 1, rejected: 2, exchanged: 3 }

  def pending?
    status == 'pending'
  end

  def reject_others
    # this could be one statement
    Offering.where(posted: self.posted).where.not(id: self).update_all(status: 'rejected') # rejects all offerings for this posting
    Offering.where(posted: self.offered).where.not(id: self).update_all(status: 'rejected') # rejects all posting what was offered
    Offering.where(offered: self.offered).where.not(id: self).update_all(status: 'rejected') # rejects all offerings what was offered
  end
end
