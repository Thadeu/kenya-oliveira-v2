class CreateAdminPhotos < ActiveRecord::Migration
  def change
    create_table :admin_photos do |t|
      t.references :admin_category, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.boolean :actived
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
