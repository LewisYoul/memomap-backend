class HomeController < ApplicationController
  def index
    @markers_count = Marker.count
    @last_marker = Marker.last
  end
end
