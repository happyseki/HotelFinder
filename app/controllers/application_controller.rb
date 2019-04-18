class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :current_user

  def current_user
    User.find_by({ id:session[:user_id] })
  end

  def signed_in?
    !!current_user
  end

  def authorized
    redirect_to signin_path unless signed_in?
  end
end
