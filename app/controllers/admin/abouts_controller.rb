class Admin::AboutsController < Admin::AdminController
  before_action :set_admin_about, only: [:show, :edit, :update, :destroy]

  # GET /admin/abouts
  # GET /admin/abouts.json
  def index
    @admin_abouts = Admin::About.all
  end

  # GET /admin/abouts/1
  # GET /admin/abouts/1.json
  def show
  end

  # GET /admin/abouts/new
  def new
    @admin_about = Admin::About.new
  end

  # GET /admin/abouts/1/edit
  def edit
  end

  # POST /admin/abouts
  # POST /admin/abouts.json
  def create
    @admin_about = Admin::About.new(admin_about_params)

    respond_to do |format|
      if @admin_about.save
        format.html { redirect_to admin_abouts_path, notice: 'About was successfully created.' }
        format.json { render :show, status: :created, location: @admin_about }
      else
        format.html { render :new }
        format.json { render json: @admin_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/abouts/1
  # PATCH/PUT /admin/abouts/1.json
  def update
    respond_to do |format|
      if @admin_about.update(admin_about_params)
        format.html { redirect_to admin_abouts_path, notice: 'About was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_about }
      else
        format.html { render :edit }
        format.json { render json: @admin_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/abouts/1
  # DELETE /admin/abouts/1.json
  def destroy
    @admin_about.destroy
    respond_to do |format|
      format.html { redirect_to admin_abouts_url, notice: 'About was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_about
      @admin_about = Admin::About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_about_params
      params.require(:admin_about).permit(:description, :image, :retained_image, :remove_image)
    end
end
