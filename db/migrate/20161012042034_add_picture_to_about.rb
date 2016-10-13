class AddPictureToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :picture, :string
  end
end
