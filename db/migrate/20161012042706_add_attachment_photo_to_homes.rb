class AddAttachmentPhotoToHomes < ActiveRecord::Migration
  def self.up
    change_table :homes do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :homes, :photo
  end
end
