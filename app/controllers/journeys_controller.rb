class JourneysController < ApplicationController

  before_action :set_journey, only: %i[show edit update destroy]

  def index
    @journeys = Journey.all
  end

  def show
    @markers = @journey.markers
  end

  private

  def set_journey
    @journey = Journey.find(params[:id])
  end
end
