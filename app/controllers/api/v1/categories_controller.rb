class Api::V1::CategoriesController < Api::ApiController

  #before_action :authenticate_token

  def index
    categories = Admin::Category.order('name ASC')
    respond_with categories
  end
end
