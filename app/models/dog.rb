class Dog < ApplicationRecord

    has_many :cities
    has_many :dogsitters, through: :cities

end
