# frozen_string_literal: true

class AddColumnUserIdToTicket < ActiveRecord::Migration[7.1]
  def change
    add_reference :tickets, :user, null: true, foreign_key: true
  end
end
