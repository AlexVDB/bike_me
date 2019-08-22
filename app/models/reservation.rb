class Reservation < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :date, presence: true
  validates_uniqueness_of :date, scope: :bike_id
end
