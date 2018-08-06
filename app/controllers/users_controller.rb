class UsersController < ApplicationController
  before_action :authorize_user
  before_action :authorize_admin, only: [:index]

  def index
    @users = User.all.order(:username)
  end

  private

  def authorize_user
    if !user_signed_in?
      redirect_to root_path
    end
  end

  def is_given_user_logged_in
    return params[:id] == current_user.username
  end

  def authorize_admin
    if !current_user.admin?
      redirect_to root_path
    end
  end

  def user_search_params
    params.require(:user).permit(:username, :email)
  end

  def user_params
    params.require(:user).permit(:email, :username, :password, :age, :gender, :height, :weight, :react)
  end

end
