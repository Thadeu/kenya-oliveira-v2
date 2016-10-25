class Api::V1::PhotosController < Api::ApiController

  #before_action :authenticate_token

  def index
    photos = Admin::Photo.order('name ASC')
    respond_with photos
  end
end
