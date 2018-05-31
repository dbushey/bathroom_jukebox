class TracksController < ApplicationController
    before_action :authenticate_spotify
    def index
        # @tracks = Track.all
        # if params[:track_name] == nil
          @tracks = RSpotify::Track.search('Thriller')
        #   redirect_to track_path
        # end
          #error message: song not found
          #render page
        # end
    end

    def show 
        @track = RSpotify::Track.find(params[:id])
        # @track = Track.find(params[:id])
    end
end
