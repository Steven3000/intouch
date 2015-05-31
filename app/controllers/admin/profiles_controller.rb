class Admin::profilesController < Admin::BaseController

  def index
    @profiles = Profile.order(created_at: :desc).page(params[:page]).per(20)
   # @profiles = Profile.search(params[:search])
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profiles_params)

    if @profile.save
      redirect_to "/admin/profiles", :notice => "profile created successfully."
    else
      render '/admin/new'
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profiles_params)

    if @profile.save
      redirect_to "/admin/profiles", :notice => "profile updated successfully."
    else
      render '/admin/edit'
    end
  end

  def destroy
        @profile = profile.find(params[:id])
       @profile.destroy

    redirect_to "/admin/profiles", :notice => "profile deleted."
  end

    private

    def set_profile
      @profile = profile.find(params[:id])
    end

    def profiles_params
      params.require(:profile).permit(:name, :website, :avatar, :pic, :record_label)
    end

end
