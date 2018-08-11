# frozen_string_literal: true

require 'pry'

class Api::MarkersController < Api::ApiController
  def index
    markers = Marker.all

    render json: markers
  end

  def create
    binding.pry
    marker = Marker.new(marker_params)

    if marker.save
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
