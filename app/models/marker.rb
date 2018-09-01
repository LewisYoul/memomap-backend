# frozen_string_literal: true

class Marker < ApplicationRecord
  validates_presence_of :lat, :lng

  belongs_to :journey, optional: true
end
