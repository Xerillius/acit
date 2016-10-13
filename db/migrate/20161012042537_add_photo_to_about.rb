class AddPhotoToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :photo, :string
  end
end
