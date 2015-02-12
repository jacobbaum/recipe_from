class Ingredient < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 254 }
  validates :measurement, presence: true
end
