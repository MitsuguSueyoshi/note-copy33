class NotesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  protect_from_forgery except: :destroy

  def index
    if user_signed_in?
      @follow_users = User.find(current_user.id).followings
      @notes = Note.where(user_id: @follow_users).or(Note.where(user_id: current_user.id)).includes(:user).order("created_at DESC")
    end
    @likes = Like.all.includes(:user)
  end

  def show
  end

  def new
      @note = Note.new
      @note.images.new
  end

  def create
    @note = current_user.notes.new(notes_params)
    if @note.save
       respond_to do |format|
          format.html { redirect_to root_path }
          format.json
       end
    else
      flash[:alert] = 'タイトル、本文、カテゴリは必ず入力して下さい'
      redirect_to new_note_path
    end
  end

  def edit
    @note = Note.find(params[:id])
    @note.images.new
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(notes_params)
      redirect_to root_path
    else
      flash[:alert] = 'タイトル、本文、カテゴリは必ず入力して下さい'
      redirect_to edit_note_path
    end
  end

  def destroy
    @note = Note.find(params[:id])
    if @note.user.id == current_user.id
       @note.destroy
       redirect_back(fallback_location: root_path)
    end
  end

  private
  def notes_params
    params.require(:note).permit(:title, :text, :category, images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
