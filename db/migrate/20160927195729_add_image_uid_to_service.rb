class AddImageUidToService < ActiveRecord::Migration
  def change
    add_column :admin_services, :image_uid, :string
    add_column :admin_services, :image_name, :string
  end
end
