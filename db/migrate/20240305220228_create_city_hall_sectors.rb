class CreateCityHallSectors < ActiveRecord::Migration[7.1]
  def change
    create_table :city_hall_sectors do |t|
      t.string :name

      t.timestamps
    end
  end
end
