class AddColumnImageUidToAdminPhotos < ActiveRecord::Migration
  def change
    add_column :admin_photos, :image_uid, :string
    add_column :admin_photos, :image_name, :string
  end
end
