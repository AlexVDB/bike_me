class User < ApplicationRecord
  has_many :owned_bikes, class_name: 'Bike', foreign_key: :owner_id
  has_many :reservations
  has_many :bikes, through: :reservations, class_name: 'Bike', foreign_key: :owner_id
end
