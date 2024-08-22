class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy confirm]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @product = Product.find(params[:product_id])
    @booking = Booking.new(product: @product, user: current_user)
  end

  def create
    @booking = Booking.new(booking_params.merge(user: current_user))

    if @booking.save
      redirect_to user_booking_path(current_user, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to user_booking_path(current_user, @booking), notice: 'Booking updated'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to user_bookings_path(current_user), notice: 'Booking deleted'
  end

  def confirm
    if current_user == @booking.product.user
      if @booking.update(confirmed: true)
        redirect_to dashboard_path, notice: 'Réservation confirmée!'
      else
        redirect_to dashboard_path, alert: 'Erreur lors de la confirmation!'
      end
    else
      redirect_to root_path, alert: 'Vous ne pouvez pas confirmer cette réservation!'
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :product_id, :user_id)
  end
end
