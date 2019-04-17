class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @room = @booking.room
  end

  def create
    @room_number = params[:room_number]
    user_id = User.find(1)
    @booking = Booking.create(booking_params)
    if @booking.valid?
     redirect_to show_booking_room_hotel_path
   else
     flash[:errors] = @booking.errors.full_messages
     redirect_to booking_room_hotel_path
   end
   # session[:current_user]
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :num_rooms, :num_ppl, :room_id).merge( user_id: 1, room_id: @room_number)
  end

end
