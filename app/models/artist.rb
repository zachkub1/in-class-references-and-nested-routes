class Artist < ApplicationRecord
  # A track has no meaning without its artist.
  has_many :tracks, dependent: :destroy
  has_many :performances, dependent: :destroy
  has_many :stages, through: :performances

  validates :name, presence: true
end
