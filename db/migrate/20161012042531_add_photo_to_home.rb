class AddPhotoToHome < ActiveRecord::Migration
  def change
    add_column :homes, :photo, :string
  end
end
