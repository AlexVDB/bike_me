class Bike < ApplicationRecord
  CATEGORIES = %w[VTT Enfant Tandem Vintage]
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  validates :title, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :category, presence: true, allow_blank: false, inclusion: { in: CATEGORIES }
  validates :price, presence: true, allow_blank: false
end
