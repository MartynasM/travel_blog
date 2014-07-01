class Travel < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string  :name,        null: false
      t.text    :description, null: false, default: ''
      t.integer :photo_id
    end

    create_table :days do |t|
      t.integer :travel_id, null: false
      t.integer :serial,    null: false
      t.string  :name
      t.integer :map_id
      t.integer :photo_id

      t.index   [:travel_id, :serial], unique: true
    end

    create_table :points do |t|
      t.integer :day_id,    null: false
      t.integer :serial,    null: false
      t.float   :longitude, null:false
      t.float   :latitude,  null:false
      t.string  :name

      t.index   [:day_id, :serial], unique: true
    end

    create_table :articles do |t|
      t.integer :point_id,    null: false
      t.integer :serial,    null: false
      t.integer :album_id,
      t.string  :name

      t.index   [:point_id, :serial], unique: true
    end

    create_table :album do |t|
      t.string :name
    end
  end
end
