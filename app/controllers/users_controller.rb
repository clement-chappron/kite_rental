class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:profile]

  def profile
    @user = current_user
  end

  def update_profile_picture
    if current_user.update(profile_picture: params[:user][:profile_picture])
      render json: { profile_picture_url: current_user.profile_picture.url }, status: :ok
    else
      render json: { error: 'Erreur lors de la mise à jour de la photo' }, status: :unprocessable_entity
    end
  end
end
