class Dogsitter < ApplicationRecord

    has_many :cities
    has_many :dogs, through: :cities

end
