class Admin::PhotosController < Admin::AdminController
  before_action :set_admin_photo, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Admin::Category.all
    @category = @categories.friendly.find(params[:category_id]) unless params[:category_id].blank?
    @photos = Admin::Photo.where(admin_category_id: @category) if params[:category_id].present?
  end

  def show
    redirect_to edit_admin_photo_path(@admin_photo)
  end

  def new
    @admin_photo = current_admin_user.admin_photo.build(admin_category_id: params[:category_id])
  end

  def edit
    respond_with(@admin_photo)
  end

  def create
    @admin_photo = current_admin_user.admin_photo.create(admin_photo_params)
    respond_with(@admin_photo, location: admin_photos_path)
  end

  def update
    @admin_photo.update(admin_photo_params)
    respond_with(@admin_photo, location: admin_photos_path)
  end

  def destroy
    @admin_photo.update(actived: 0, deleted_at: Time.now)
    flash[:notice] = "Foto Excluida!"
    respond_with(nil, location: admin_photos_path)
  end

  private
    def set_admin_photo
      @admin_photo = Admin::Photo.friendly.find(params[:id])
    end

    def admin_photo_params
      params.require(:admin_photo)
            .permit(:admin_category_id,
                    :user_id,
                    :slug,
                    :name,
                    :image,
                    :retained_image,
                    :remove_image,
                    :actived,
                    :deleted_at)
    end
end
