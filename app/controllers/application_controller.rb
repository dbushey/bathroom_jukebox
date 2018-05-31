class ApplicationController < ActionController::Base

  private 
  
  def authenticate_spotify
    RSpotify.authenticate("e5aa5aa789654c62900984b8689c2dde", "a0d1a400f9124d10941416b3ef8ca218")
  end
end
