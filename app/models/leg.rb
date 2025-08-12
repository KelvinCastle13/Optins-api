class Leg < ApplicationRecord
  belongs_to :strategy
  belongs_to :trade
  validates :leg_type, :side, :expiration, :strike, :contracts, presence: true
end
