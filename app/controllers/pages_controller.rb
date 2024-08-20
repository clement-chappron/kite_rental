class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all
  end

  def dashboard
    @user = current_user
    @products = @user.products
    @product_count = @products.count
    @bookings = @user.bookings
  end

  def update_profile_picture
    @user = current_user
    if @user.update(user_params)
      redirect_to dashboard_path, notice: 'Photo mise à jour!'
    else
      render :dashboard
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :profile_photo)
  end
end
