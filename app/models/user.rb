class User < ApplicationRecord



validates :name, uniqueness: true, presence: true
validates :email, uniqueness: true, presence: true
validates :localisation, uniqueness: true, presence: true

end
