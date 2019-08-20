class User < ApplicationRecord


  has_many :owned_bikes, class_name: 'Bike', foreign_key: :owner_id
  has_many :reservations
  has_many :bikes, through: :reservations, class_name: 'Bike', foreign_key: :owner_id



  validates :name, uniqueness: true, presence: true, allow_blank: false
  validates :email, uniqueness: true, presence: true, allow_blank: false
  validates :localisation, uniqueness: true, presence: true, allow_blank: false



end
