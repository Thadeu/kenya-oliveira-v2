class AddColumnActivedToAdminCategory < ActiveRecord::Migration
  def change
    add_column :admin_categories, :actived, :boolean, default: 1
  end
end
