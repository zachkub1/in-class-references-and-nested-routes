class Performance < ApplicationRecord
  # Join model: one artist on one stage at one time.
  belongs_to :stage
  belongs_to :artist

  validates :starts_at, presence: true
end
