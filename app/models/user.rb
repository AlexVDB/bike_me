class User < ApplicationRecord






















validates :name, uniqueness: true, presence: true, allow_blank: false
validates :email, uniqueness: true, presence: true, allow_blank: false
validates :localisation, uniqueness: true, presence: true, allow_blank: false

end
