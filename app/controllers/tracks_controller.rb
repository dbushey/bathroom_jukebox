class TracksController < ApplicationController
    before_action :authenticate_spotify
    def index
          @tracks = RSpotify::Track.search(params[:track_name])
    end

    def show 
        @track = RSpotify::Track.find(params[:id])   
    end

    def add
        @track = RSpotify::Track.find(params[:id])
        session[:track] = @track

        redirect_to root_path
    end

end
