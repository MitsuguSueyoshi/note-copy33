class HeadermagazinesController < ApplicationController

  def index
    @free_magazines = Magazine.all.includes(:user).order("created_at DESC").limit(6)
    @pickup_magazine = Magazine.last
  end

  def magazine_all
    @all_magazines = Magazine.all.includes(:user).order("created_at DESC")
  end
end
