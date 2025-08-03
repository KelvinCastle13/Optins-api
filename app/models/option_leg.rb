class OptionLeg < ApplicationRecord
  belongs_to :strategy

  validates :leg_type, inclusion: { in: [ true, false ] }
  validates :leg_action, inclusion: { in: [ true, false ] }
  validates :expiration, :strike_type, :strike_value, presence: true
end
