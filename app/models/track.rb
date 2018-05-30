class Track < RSpotify::Track
  has_many :bathroom_trips
  has_many :users, through: :bathroom_trips
end
