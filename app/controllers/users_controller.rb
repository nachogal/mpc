class UsersController < ApplicationController

  before_filter :authenticate_user!, except: [:portfolio]

  def show
 	  @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def portfolio
    @user = User.find(params[:id])

    @post = @user.posts.first
  end

  def upload_avatar
    if current_user.present?
      if current_user.update(user_avatar_params)
        redirect_to user_portfolio_path(current_user)
      end
    end
  end

  def update_password
    @user = User.find(current_user.id)
   if match_password(@user.password, params[:user][:old_password]) && @user.update(user_params)
        render :show
    else
    end
  end

  def update
  end

  private

  def user_avatar_params
    params.require(:user).permit(:avatar)
  end

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.required(:user).permit(:password, :password_confirmation)
  end

  def match_password(a,b)
   if a.nil?
      return true
    end
    a == b
  end

end
