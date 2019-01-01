class MylikesController < ApplicationController
  def index
    @likes = current_user.likes.order("created_at DESC") if user_signed_in?
  end
end
