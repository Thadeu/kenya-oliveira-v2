class AddColumnSlugToAdminPhoto < ActiveRecord::Migration
  def change
    add_column :admin_photos, :slug, :string
    add_index :admin_photos, :slug, unique: true
  end
end
