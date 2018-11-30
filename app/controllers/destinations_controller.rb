class DestinationsController < ApplicationController

    def index
      render json: Destination.all
    end

    def show
      render json: Destination.find(params[:id])
    end

    def create
      render json: Destination.create(destination_params)
    end

    private

    def user_params
      params.require(:destination).permit(:name)
    end

end
