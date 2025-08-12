class Trade < ApplicationRecord
  has_many :legs, dependent: :destroy
  belongs_to :strategy
  validates :strategy_id, presence: true
end
