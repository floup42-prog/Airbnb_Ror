class City < ApplicationRecord

    belongs_to :dogsitter
    belongs_to :dog

end
