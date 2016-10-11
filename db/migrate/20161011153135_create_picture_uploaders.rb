class CreatePictureUploaders < ActiveRecord::Migration
  def change
    create_table :picture_uploaders do |t|

      t.timestamps null: false
    end
  end
end
