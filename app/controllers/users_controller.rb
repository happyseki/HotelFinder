class UsersController < ApplicationController
  skip_before_action :authorized, only:[:new, :create]
  before_action :find_user, only: [:show, :edit, :update]
  def new
   @user = User.new
  end

  def show
  end

  def create
    @user = User.create(user_params)
    redirect_to home_path
  end

  def edit
    @user = User.create(user_params)
    redirect_to home_path
  end

  def update
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end

end
