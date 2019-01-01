class MylikesController < ApplicationController
  def index
    @likes = current_user.likes if user_signed_in?
  end
end
