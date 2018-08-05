class Api::MarkersController < Api::ApiController

  def index
    markers = Marker.all

    render json: markers
  end

end
