class CreateAdminAbouts < ActiveRecord::Migration
  def change
    create_table :admin_abouts do |t|
      t.text :description
      t.string :image
      t.string :image_uid
      t.string :image_name

      t.timestamps null: false
    end
  end
end
