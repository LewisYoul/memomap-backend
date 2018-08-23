# frozen_string_literal: true

class Marker < ApplicationRecord
  validates_presence_of :lat, :lng
end
