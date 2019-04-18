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
    # sign up and create a user,get his id,save it to session
    session[:user_id] = @user.id
    # keeps the user logging in
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
    # change :password_digest to :password, cuz in User model we set has_secure_password
    # that will convert password to password_digest automatically for us
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
