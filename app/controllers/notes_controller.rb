class NotesController < ApplicationController

  def index
    @notes = Note.all.includes(:user).order("created_at DESC")
  end

  def show

  end

  def new
    @note = Note.new
    @note.images.build
  end

  def create
    @note = current_user.notes.build(notes_params)
    @note.save
    redirect_to action: 'index'
  end

  private
  def notes_params
    params.require(:note).permit(:title, :text, :category, images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
