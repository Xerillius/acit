class AddPhotoToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :photo, :string
  end
end
