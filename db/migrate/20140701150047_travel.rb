class Travel < ActiveRecord::Migration
  def change
    # create_table :travels do |t|
    #   t.string  :name,        null: false
    #   t.text    :description, null: false
    #   t.integer :photo_id
    #   t.timestamps
    # end

    # create_table :days do |t|
    #   t.integer :travel_id, null: false
    #   t.integer :serial,    null: false
    #   t.string  :name
    #   t.integer :map_id
    #   t.integer :photo_id
    #   t.timestamps

    #   t.index   [:travel_id, :serial], unique: true
    # end

    # create_table :travel_points do |t|
    #   t.integer :day_id,    null: false
    #   t.integer :serial,    null: false
    #   t.float   :longitude, null:false
    #   t.float   :latitude,  null:false
    #   t.string  :name
    #   t.timestamps

    #   t.index   [:day_id, :serial], unique: true
    # end

    # create_table :articles do |t|
    #   t.integer :point_id, null: false
    #   t.integer :serial,   null: false
    #   t.string  :name
    #   t.integer :album_id
    #   t.timestamps

    #   t.index   [:point_id, :serial], unique: true
    # end

    # create_table :albums do |t|
    #   t.string :name
    #   t.timestamps
    # end

    # create_table :maps do |t|
    #   t.timestamps
    # end

    # create_table :map_points do |t|
    #   t.integer :map_id, null: false
    #   t.float   :longitude, null:false
    #   t.float   :latitude,  null:false
    #   t.integer :serial,   null: false
    #   t.timestamps
    # end
  end
end
