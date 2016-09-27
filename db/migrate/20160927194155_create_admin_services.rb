class CreateAdminServices < ActiveRecord::Migration
  def change
    create_table :admin_services do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
