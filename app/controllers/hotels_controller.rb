class HotelsController < ApplicationController
  def home
    @user = User.find(session[:user_id])

    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @rooms = @hotel.rooms
    @images = @hotel.images
  end

end
