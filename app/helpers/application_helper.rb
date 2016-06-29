module ApplicationHelper
  def count_photos(category)
    Admin::Photo.where(admin_category_id: category.id).count
  end
end
