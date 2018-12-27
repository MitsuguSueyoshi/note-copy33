class SearchesController < ApplicationController

  def index
    @search_notes = Note.ransack(params[:q])
    @result_notes = @search_notes.result.includes(:user)
    @new_notes = @search_notes.result.order("created_at DESC").includes(:user)
    @spike_notes = @search_notes.result.order("created_at ASC").includes(:user)

    @likes = Like.all.includes(:user)
    if user_signed_in?
      @follow_users = User.find(current_user.id).followings
    end
  end

  def search_magazine
    @search_magazines = Magazine.ransack(params[:q])
    @result_magazines = @search_magazines.result
  end

  def search_user
    @search_users = User.ransack(params[:q])
    @result_users = @search_users.result
  end
end
