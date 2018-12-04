class MagazinesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @magazines = current_user.magazines
  end

  def new
    @user = current_user
    @magazine = Magazine.new
  end

  def create
    @magazine = current_user.magazines.new(magazines_params)
    if @magazine.save
      respond_to do |format|
        format.html {redirect_to user_magazines_path(current_user)}
        format.json
      end
    else
      flash[:alert] = 'タイトルは必ず入力して下さい'
      redirect_to new_user_magazine_path(current_user)
    end
  end

  def show
  end

  def destroy
  end

  def edit
    @user = current_user
    @magazine = Magazine.find(params[:id])
  end

  def update
    @magazine = Magazine.find(params[:id])
    if @magazine.update(magazines_params)
      flash[:notice] = 'マガジンを更新しました！'
      redirect_to user_magazines_path(current_user)
    else
      flash[:alert] = 'マガジンの更新に失敗しました'
      redirect_to edit_user_magazine_path(current_user, magazine)
    end
  end

  private
  def magazines_params
    params.require(:magazine).permit(:title, :description, :header_image).merge(user_id: current_user.id)
  end
end
