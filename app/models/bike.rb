class Bike < ApplicationRecord
  belongs_to :user

  validates :tile, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :category, presence: true, uniqueness: true, allow_blank: false
  validates :motor, presence: true, uniqueness: true, allow_blank: false
  validates :price, presence: true, allow_blank: false
end
