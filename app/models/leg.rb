class Leg < ApplicationRecord
  belongs_to :strategy
  belongs_to :trade
end
