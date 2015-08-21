class Admin::UsersController < Admin::BaseController

  def index
    @users = User.order(created_at: :desc).page(params[:page]).per(10)
   # @user = Profile.search(params[:search])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
      respond_to do |format|
      format.html { redirect_to admin_users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def users_params
    params.require(:user).permit(:profile,
      :email,
      :announced,
      :remember_created_at,
      :sign_in_count,
      :current_sign_in_at,
      :last_sign_in_at,
      :current_sign_in_ip,
      :last_sign_in_at, :username,
      :created_at,
      :updated_at,
      :admin,
      :zip_code,
      :age)
  end


end
