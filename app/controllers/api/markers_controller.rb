# frozen_string_literal: true

module Api
  # Api Markers Controller
  class MarkersController < Api::ApiController
    def index
      markers = Marker.all

      render json: markers
    end

    def create
      marker = Marker.new(marker_params)

      if marker.save
        render json: marker
      else
        head :bad_request
      end
    end

    def destroy
      marker = Marker.find(params[:id])

      if marker.destroy
        render json: marker
      else
        head :bad_request
      end
    end

    private

    def marker_params
      params.require(:marker).permit(:lat, :lng, :category)
    end
  end
end
