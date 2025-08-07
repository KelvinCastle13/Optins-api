class OptionLeg < ApplicationRecord
  belongs_to :strategy

  validates :leg_type, :leg_action, :expiration, :strike_type, :strike_value, presence: true
end
