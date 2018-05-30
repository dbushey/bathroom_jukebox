class TracksController < ApplicationController

    def index
        if !params[:track_name].empty?
          @tracks = RSpotify::Track.search(params[:track_name])
          redirect_to track_path
        end
          #error message: song not found
          #render page
        # end
    end

    def show 
        @artist = RSpotify::Artist.find(params[:id])
    end
end
