class AddJourneyToMarkers < ActiveRecord::Migration[5.2]
  def change
    add_reference :markers, :journey, foreign_key: true
  end
end
