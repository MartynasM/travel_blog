class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :travel_id
      t.integer :serial
      t.string :name

      t.timestamps
    end
  end
end
