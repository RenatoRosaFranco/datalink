# frozen_string_literal: true

class AddColumnPlaceTypeToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_reference :places, :place_type, null: true, foreign_key: true
  end
end
