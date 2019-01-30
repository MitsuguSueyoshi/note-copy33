class NotesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  protect_from_forgery except: :destroy
  impressionist actions: [:show]

  def index
    if user_signed_in?
      @follow_users = User.find(current_user.id).followings
      page = params[:page]
      @notes = Note.get_followings_note(@follow_users,current_user,page)
    end
    @likes = Like.all.includes(:user)
  end

  def show
    all_ranks = Note.create_all_ranks
    @my_ranks = all_ranks.select{ |note| note.user_id == @note.user.id }
    @comment = Comment.new
    @comments = @note.comments.includes(:user)
    @comments_count = @comments.count
    impressionist(@note, nil, unique: [:session_hash])
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
  end

  def update
    if @note.update(notes_params)
      redirect_to root_path
    else
      flash[:alert] = 'タイトル、本文、カテゴリは必ず入力して下さい'
      redirect_to edit_note_path
    end
  end

  def destroy
    if @note.user.id == current_user.id
       @note.destroy
       redirect_back(fallback_location: root_path)
    end
  end

  private
  def notes_params
    params.require(:note).permit(:title, :text, :category, images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_note
    @note = Note.find(params[:id])
  end
end
