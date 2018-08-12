class HomeController < ApplicationController
  def index
    @markers_count = Marker.count
  end
end
