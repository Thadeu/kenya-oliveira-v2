json.extract! admin_about, :id, :description, :image, :image_uid, :image_name, :created_at, :updated_at
json.url admin_about_url(admin_about, format: :json)