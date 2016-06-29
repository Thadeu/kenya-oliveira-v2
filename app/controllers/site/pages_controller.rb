class Site::PagesController < ApplicationController
  def index
    @photos = Admin::Photo.order("updated_at DESC")
    @categories = Admin::Category.order("updated_at DESC")
  end

  def categories
  end
end
