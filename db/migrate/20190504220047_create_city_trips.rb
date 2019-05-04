class CreateCityTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :city_trips do |t|
      t.integer :trip_id
      t.integer :city_id

      t.timestamps
    end
  end
end
