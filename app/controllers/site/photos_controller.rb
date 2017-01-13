class Site::PhotosController < ApplicationController
  before_filter :set_photo, only: [:show]

  def show
  end

  private
    def set_photo
      @photo = Admin::Photo.find(params[:photo_id])
    end
end
