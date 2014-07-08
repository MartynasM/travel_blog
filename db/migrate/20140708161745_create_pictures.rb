class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.integer :owner_id
      t.string :owner_type
      t.integer :serial

      t.timestamps
    end
  end
end
