class UsersController < ApplicationController
before_action :user_and_follow, only: [:show, :followings ,:followers]

  def show
    @notes = @user.notes.order("created_at DESC")
    @user = User.find(params[:id])
    @likes = @user.likes.order("created_at DESC") if user_signed_in?
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path

    else
      render :edit
    end
  end

  def followings
  end

  def followers
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :main_image, :header_image, :self_introduction)
  end

  def user_and_follow
    @user = User.find(params[:id])
    @followings = @user.followings
    @followers = @user.followers
    @followings_count = @followings.count
    @follower_count = @followers.count
  end


end
