class AddPictureToHome < ActiveRecord::Migration
  def change
    add_column :homes, :picture, :string
  end
end
