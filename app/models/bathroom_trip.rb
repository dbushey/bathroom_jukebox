class BathroomTrip < ApplicationRecord
    belongs_to :users 
    belongs_to :tracks
end
