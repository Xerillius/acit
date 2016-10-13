class AddAttachmentPictureToAbouts < ActiveRecord::Migration
  def self.up
    change_table :abouts do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :abouts, :picture
  end
end
