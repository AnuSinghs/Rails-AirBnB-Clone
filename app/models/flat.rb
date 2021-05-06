class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :address, presence: true
  validates :price_per_night, presence: true, numericality: true
end
