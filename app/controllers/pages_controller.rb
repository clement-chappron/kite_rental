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
    if @user.update(profile_picture: params[:user][:profile_picture])
      respond_to do |format|
        format.html { redirect_to user_profile_path, notice: 'Photo de profil mise à jour avec succès.' }
        format.json { render json: { profile_picture_url: @user.profile_picture.url } }
      end
    else
      respond_to do |format|
        format.html { render :profile }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :profile_photo)
  end
end
