class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.datetime :date
      t.string :name
      t.text :description
      t.integer :photo_id

      t.timestamps
    end
  end
end
