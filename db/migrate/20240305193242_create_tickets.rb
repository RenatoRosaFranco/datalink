# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.integer  :kind
      t.text     :description
      t.string   :location

      t.timestamps
    end
  end
end
