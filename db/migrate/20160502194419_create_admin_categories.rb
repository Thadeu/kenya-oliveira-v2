class CreateAdminCategories < ActiveRecord::Migration
  def change
    create_table :admin_categories do |t|
      t.string :name
      t.string :slug
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
