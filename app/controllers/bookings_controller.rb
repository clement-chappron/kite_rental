class BookingsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @booking = Booking.new
  end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to product_booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
