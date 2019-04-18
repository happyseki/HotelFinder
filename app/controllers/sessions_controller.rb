class SessionsController < ApplicationController
  skip_before_action :authorized, only:[:new, :create]
  def new
   render :new
  end

  def create
   @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to home_path
    else
      flash[:notice] = "The email and password combination you entered doesn't match."
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You signed out"
    redirect_to home_path
  end

end
