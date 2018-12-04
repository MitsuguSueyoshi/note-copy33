class MagazinesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_magazine, only:[:show, :edit, :update, :destroy]

  def index
    @magazines = current_user.magazines
  end

  def new
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
    if @magazine.user_id = current_user.id
      if @magazine.destroy
        flash[:notice] = 'マガジンを削除しました'
        redirect_to user_magazines_path(current_user)
      else
        flash[:alert] = 'マガジンの削除に失敗しました'
        redirect_to edit_user_magazine_path(current_user, @magazine)
      end
    else
      redirect_to user_magazines_path(current_user)
    end
  end

  def edit
  end

  def update
    if @magazine.user_id = current_user.id
      if @magazine.update(magazines_params)
        flash[:notice] = 'マガジンを更新しました'
        redirect_to user_magazines_path(current_user)
      else
        flash[:alert] = 'マガジンの更新に失敗しました'
        redirect_to edit_user_magazine_path(current_user, magazine)
      end
    else
      redirect_to user_magazines_path(current_user)
    end
  end

  private
  def magazines_params
    params.require(:magazine).permit(:title, :description, :header_image).merge(user_id: current_user.id)
  end

  def set_magazine
    @magazine = Magazine.find(params[:id])
  end
end
