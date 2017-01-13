class Site::PagesController < ApplicationController
  before_action :set_category_slug, only: [:album]

  def index
    @carousel = Admin::Photo.order("updated_at DESC").take(6)
  end

  def portifolio
    @categories = Admin::Category.order('name ASC')
    @photos = Admin::Photo.all
  end

  def album
  end

  def services
    @services = Admin::Service.order('name ASC')
  end

  def about
    @about = Admin::About.last
  end

  def contact
  end

  private
    def set_category_slug
      @category = Admin::Category.friendly.find(params[:id])
      @photos = Admin::Photo.where(admin_category_id: @category)
    end
end
