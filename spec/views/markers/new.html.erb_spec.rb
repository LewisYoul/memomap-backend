# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'markers/new', type: :view do
  before(:each) do
    assign(:marker, Marker.new)
  end

  it 'renders new marker form' do
    render

    assert_select 'form[action=?][method=?]', markers_path, 'post' do
    end
  end
end
