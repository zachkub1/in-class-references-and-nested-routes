class Festival < ApplicationRecord
  # Stages only exist as part of a festival, so they go with it.
  has_many :stages, dependent: :destroy
  # Sold tickets are a financial record: refuse to delete a festival that has them.
  has_many :tickets, dependent: :restrict_with_error
  has_many :attendees, through: :tickets

  validates :name, presence: true
  validates :starts_on, presence: true
  validates :city, presence: true
end
