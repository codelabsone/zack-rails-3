class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string   "image", index: true
      t.string   "image_uid"
      t.string   "image_name", index: true

      t.timestamps null: false
    end

    add_reference :photos, :vehicle, index: true, foreign_key: true

    create_table "photos_posts" do |t|
      t.belongs_to :photo, index: true
      t.belongs_to :vehicle, index: true
    end
  end
end
