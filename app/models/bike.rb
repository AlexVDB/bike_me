class Bike < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :category, presence: true, allow_blank: false
  validates :price, presence: true, allow_blank: false
end
