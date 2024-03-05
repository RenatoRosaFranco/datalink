# frozen_string_literal: true

class CreatePlaceTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :place_types do |t|
      t.string   :name

      t.timestamps
    end
  end
end
