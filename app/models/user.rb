class User < ApplicationRecord
  has_many :bathroom_trips
  has_many :tracks, through: :bathroom_trips
end
