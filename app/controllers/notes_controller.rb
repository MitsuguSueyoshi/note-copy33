class NotesController < ApplicationController

  def index
    @notes = Note.all.includes(:user)
  end

  def show

  end

  def new
    @note = Note.new
  end

  def create
    Note.create(notes_params)
    redirect_to action: 'index'
  end

  private
  def notes_params
    params.require(:note).permit(:title, :text, :category).merge(user_id: current_user.id)
  end
end
