class AddPictureToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :picture, :string
  end
end
