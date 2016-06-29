class ChangeColumnActivedToAdminCategory < ActiveRecord::Migration
  def change
    change_column :admin_categories, :actived, :integer, default: 1
  end
end
