class PunkBandsController < ApplicationController
    before_action :find_band, only: [:show, :edit, :update, :destroy]

    def index
        @bands = PunkBand.all
    end

    def show
    end

    def new
        @band = PunkBand.new
    end

    def create
        @band = PunkBand.create(strong_params)
        redirect_to @band
    end

    def edit
    end

    def update
        @band.update(strong_params)
        redirect_to @band
    end

    def destroy
        @band.destroy
        redirect_to punk_bands_path
    end

    private

    def find_band
        @band = PunkBand.find(params[:id])
    end

    def strong_params
        params.require("punk_band").permit(:name, :punkiness, :poser)
    end

end
