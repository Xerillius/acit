class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
