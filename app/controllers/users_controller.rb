class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :main_image, :header_image, :self_introduction)
  end


end
