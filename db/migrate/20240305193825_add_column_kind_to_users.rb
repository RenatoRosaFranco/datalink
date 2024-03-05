# frozen_string_literal: true

class AddColumnKindToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :kind, :integer
  end
end
