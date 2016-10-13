class AddAttachmentPictureToHomes < ActiveRecord::Migration
  def self.up
    change_table :homes do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :homes, :picture
  end
end
