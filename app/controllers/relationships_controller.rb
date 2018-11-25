class RelationshipsController < ApplicationController
  before_action :set_user

  def create
    current_user.follow(user)
    flash[:success] = 'ユーザーをフォローしました'
    redirect_to user
  end

  def destroy
    current_user.unfollow(user)
    flash[:success] = 'ユーザーのフォローを解除しました'
    redirect_to user
  end

  private

  def set_user
    user = User.find(params[:relationship][:follow_id])
  end

end
