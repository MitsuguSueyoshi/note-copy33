class MagazinesController < ApplicationController

  def index
  end

  def new
    @user = current_user
    @magazine = Magazine.new
  end

  def create
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

end
