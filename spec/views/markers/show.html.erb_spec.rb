require 'rails_helper'

RSpec.describe "markers/show", type: :view do
  before(:each) do
    @marker = assign(:marker, Marker.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
