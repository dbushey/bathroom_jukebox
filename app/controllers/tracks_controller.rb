class TracksController < ApplicationController

    def index
        if !params[:track_name].empty?
          @track = RSpotify::Track.search(params[:track_name])
          redirect_to track_path
        end
          #error message: song not found
          #render page
        end
    end
end
