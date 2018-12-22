class HeadermagazinesController < ApplicationController

  def index
    @free_magazines = Magazine.get_magazine.limit(6)
    @pickup_magazine = Magazine.last
  end

  def magazine_all
    @all_magazines = Magazine.get_magazine
  end




end
