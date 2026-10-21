class Ticket < ApplicationRecord
  # Two foreign keys: every ticket is bought by one attendee for one festival.
  belongs_to :attendee
  belongs_to :festival

  validates :tier, presence: true
  validates :price_cents, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
