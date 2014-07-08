class AddFileToPicture < ActiveRecord::Migration
 def self.up
    add_attachment :pictures, :file
  end

  def self.down
    remove_attachment :pictures, :file
  end
end
