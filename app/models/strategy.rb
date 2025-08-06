class Strategy < ApplicationRecord
  has_many :option_legs
  has_many :images
end
