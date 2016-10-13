class AddAttachmentPhotoToBlogposts < ActiveRecord::Migration
  def self.up
    change_table :blogposts do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :blogposts, :photo
  end
end
