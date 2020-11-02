class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.all 
        @artist_instrument = ArtistInstrument.new 
        render :index 
    end
end
