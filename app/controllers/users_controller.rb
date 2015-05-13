class UsersController < ApplicationController  
  # def update_password
 	#   @user = User.find(params[:id])
  # end
  before_filter :authenticate_user!

  def show
 	  @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def portfolio
    @user = User.find(params[:id])
    @logged_in_id = current_user.id
  end

   def update_password
    # @user = User.find(params[:id])
    @user = User.find(current_user.id)
   if match_password(@user.password, params[:user][:old_password]) && @user.update(user_params)
        render :show 
    else
    end
  end

  private

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.required(:user).permit(:password, :password_confirmation)
  end
end
  
  # def update 
 	#   @user = User.find(params[:id])
 	#   if match_password(@user.password, params[:user][:old_password]) && @user.update(user_params)
  #     render :show 
 	#   else
 	#   end 
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:password)
  # end

  def match_password(a,b)
   if a.nil?
  		return true
  	end
  	a == b
  end

  # def match_password(a,b)
  # 	if a == b
  # 		return true
  # 	else
  # 		return false
  # 	end
  # end
