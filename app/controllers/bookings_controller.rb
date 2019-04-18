class BookingsController < ApplicationController
 skip_before_action :authorized, only:[:create, :update]
 before_action :find_booking, only:[:show, :edit, :update, :destroy]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show

    @room = @booking.room
    @user = User.find(session[:user_id])
  end

  def create
    @room_number = params[:room_number]
    @user_id = session[:user_id]
    @booking = Booking.create(booking_params)
    if @booking.valid?
     redirect_to show_booking_room_hotel_path(@booking)
   else
     flash[:errors] = @booking.errors.full_messages
     redirect_to booking_room_hotel_path(@booking)
   end
  end

  def edit
  end

  def update
    @room_number = params[:room_number]
    @user_id = session[:user_id]
    @booking = Booking.update(booking_params)
    if @booking.valid?
     redirect_to show_booking_room_hotel_path(@booking)
   else
     flash[:errors] = @booking.errors.full_messages
     redirect_to edit_booking_room_hotel_path(@booking)
   end
  end

  def destroy
    @booking.destroy
    flash[:notice] = "My booking was deleted!"
    redirect_to bookings_room_hotel_path
  end

  private

 def find_booking
    @booking = Booking.find(params[:id])
 end

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :num_rooms, :num_ppl, :room_id).merge( user_id: @user_id, room_id: @room_number)
  end

end
