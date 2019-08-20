class Bike < ApplicationRecord
  belongs_to :user

validates :tile, presence: true
validates :description, presence: true
validates :category, presence: true, uniqueness: true
validates :motor, presence: true, uniqueness: true
validates :price, presence: true

end
