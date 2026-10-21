class Attendee < ApplicationRecord
  # Removing an attendee's account removes their tickets.
  has_many :tickets, dependent: :destroy
  has_many :festivals, through: :tickets

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
