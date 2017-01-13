class Admin::CategoriesController < Admin::AdminController
  before_action :set_admin_category, only: [:show, :edit, :update, :destroy]

  def index
    @admin_categories = Admin::Category.all
    respond_with(@admin_categories)
  end

  def show
    redirect_to edit_admin_category_path(@admin_category)
  end

  def new
    @admin_category = current_admin_user.admin_category.build
    respond_with(@admin_category)
  end

  def edit
    respond_with(@admin_category)
  end

  def create
    @admin_category = current_admin_user.admin_category.create(admin_category_params)
    respond_with(@admin_category, location: admin_categories_path)
  end

  def update
    @admin_category.update(admin_category_params)
    respond_with(@admin_category, location: admin_categories_path)
  end

  def destroy
    @admin_category.update(actived: 0)
    flash[:notice] = "Categoria excluida!"
    respond_with(nil, location: admin_categories_path)
  end

  private
    def set_admin_category
      @admin_category = Admin::Category.friendly.find(params[:id])
    end

    def admin_category_params
      params.require(:admin_category).permit(:name, :slug, :user_id)
    end
end
