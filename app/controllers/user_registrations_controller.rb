class UserRegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, :only => [:create, :destroy]

  def destroy
    @user = User.find(params[:id])
    @user.destroy
       respond_to do |format|
      format.html { redirect_to admin_users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :zip_code, :age) }
  end

  def after_sign_up_path_for(resource)
    '/subscriptions'
  end

private
  def user_params
      params.require(:user).permit(:user_id)
    end

end

