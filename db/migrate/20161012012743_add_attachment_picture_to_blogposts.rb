class AddAttachmentPictureToBlogposts < ActiveRecord::Migration
  def self.up
    change_table :blogposts do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :blogposts, :picture
  end
end
