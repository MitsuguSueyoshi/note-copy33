class RelationshipsController < ApplicationController
  def create
    user = User.find(params[:relationship][:follow_id])
    current_user.follow(user)
    flash[:success] = 'ユーザーをフォローしました'
    redirect_to user
  end

  def destroy
    user = User.find(params[:relationship][:follow_id])
    current_user.unfollow(user)
    flash[:success] = 'ユーザーのフォローを解除しました'
    redirect_to user
  end

end
