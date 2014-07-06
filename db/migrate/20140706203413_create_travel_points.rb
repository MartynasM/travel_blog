class CreateTravelPoints < ActiveRecord::Migration
  def change
    create_table :travel_points do |t|
      t.integer :day_id
      t.integer :serial
      t.float :longitude
      t.float :latitude
      t.string :name

      t.timestamps
    end
  end
end
