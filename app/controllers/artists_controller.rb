class ArtistsController < ApplicationController
    
    def index
        @artists = Artist.all 
        @artist_instrument = ArtistInstrument.new 
        render :index 
    end

    def show
        @artist = Artist.find(params[:id])
        render :show 
    end

    def new
        @artist = Artist.new 
        render :new 
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:artist_errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end
end
