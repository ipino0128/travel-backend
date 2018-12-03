class ItinerariesController < ApplicationController

    def index
      render json: Itinerary.all
    end

    def show
      render json: Itinerary.find(params[:id])
    end

    def create
      render json: Itinerary.create(itinerary_params)
    end

    private

    def user_params
      params.require(:itinerary).permit(:title, :description, :img_url, :user_id, :destination_id)
    end

end
