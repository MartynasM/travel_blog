class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :travel_point_id
      t.integer :serial
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
