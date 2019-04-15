class HotelsController < ApplicationController

  def home
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

end
