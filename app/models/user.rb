class User < ApplicationRecord
  LOCALISATION = %w[Paris Lyon Marseille]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_bikes, class_name: 'Bike', foreign_key: :user_id, dependent: :destroy
  has_many :reservations
  has_many :bikes, through: :reservations, class_name: 'Bike', foreign_key: :owner_id

  validates :name, uniqueness: true, presence: true, allow_blank: false
  validates :email, uniqueness: true, presence: true, allow_blank: false
  validates :localisation, presence: true, allow_blank: false, inclusion: { in: LOCALISATION }
end
