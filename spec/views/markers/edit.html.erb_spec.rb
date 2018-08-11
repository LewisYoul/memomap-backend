# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'markers/edit', type: :view do
  before(:each) do
    @marker = assign(:marker, Marker.create!)
  end

  it 'renders the edit marker form' do
    render

    assert_select 'form[action=?][method=?]', marker_path(@marker), 'post' do
    end
  end
end
