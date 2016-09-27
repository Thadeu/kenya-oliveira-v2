class Site::PagesController < ApplicationController
  def index
    @carousel = Admin::Photo.order("updated_at DESC").take(6)
  end

  def photo
  end
end
