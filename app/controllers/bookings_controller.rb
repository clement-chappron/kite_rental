class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = current_user.bookings
  end

  def show
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

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to product_booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to product_bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
