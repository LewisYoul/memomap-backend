# frozen_string_literal: true

class CreateMarkers < ActiveRecord::Migration[5.2]
  def change
    create_table :markers do |t|
      t.float :lat
      t.float :lng
      t.string :category

      t.timestamps
    end
  end
end
