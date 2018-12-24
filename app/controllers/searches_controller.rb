class SearchesController < ApplicationController

  def index
    @search_notes = Note.ransack(params[:q])
    @result_notes = @search_notes.result
    @likes = Like.all.includes(:user)
    if user_signed_in?
      @follow_users = User.find(current_user.id).followings
    end
  end

  def search_magazine
    @search_magazines = Magazine.ransack(params[:q])
    @result_magazines = @search_magazines.result
  end
end
