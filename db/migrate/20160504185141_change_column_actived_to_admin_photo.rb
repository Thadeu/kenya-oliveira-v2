class ChangeColumnActivedToAdminPhoto < ActiveRecord::Migration
  def change
    change_column :admin_photos, :actived, :integer, default: 1
  end
end
