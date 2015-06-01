class Admin::UsersController < Admin::BaseController

  def index
    @users = User.order(created_at: :desc).page(params[:page]).per(20)
   # @user = Profile.search(params[:search])
  end

  # def announcement
  #   @user = User.find(params[:id])

  #   @user = AnnouncementMailer.welcome_user.deliver_now

  #   @user.announced = true
  #   @user.save

  #   flash[:notice] = "Announcement has been sent"
  #   redirect_to admin_users_path
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def users_params
    params.require(:user).permit(:profile, :email, :announced, :remember_created_at, :sign_in_count,
      :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_at, :username,
      :created_at, :updated_at, :admin, :zip_code, :age)
  end


end
