# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'markers/index', type: :view do
  before(:each) do
    assign(:markers, [
             Marker.create!,
             Marker.create!
           ])
  end

  it 'renders a list of markers' do
    render
  end
end
