# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Markers', type: :request do
  describe 'GET /markers' do
    it 'works! (now write some real specs)' do
      get markers_path
      expect(response).to have_http_status(200)
    end
  end
end
