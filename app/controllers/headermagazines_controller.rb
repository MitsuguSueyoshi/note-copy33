class HeadermagazinesController < ApplicationController

  def index
    @free_magazines = Magazine.all.includes(:user).order("created_at DESC").limit(6)
  end
end
