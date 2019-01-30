class LikesController < ApplicationController
  before_action :set_likes
  def create
    @like = Like.create(user_id: current_user.id, note_id: params[:note_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, note_id: params[:note_id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def set_likes
    @likes = Like.where(note_id: params[:note_id])
  end
end
