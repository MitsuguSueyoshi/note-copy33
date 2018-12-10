class ArticlesController < ApplicationController
  protect_from_forgery except: :destroy

  def create
    note = Note.find(params[:article][:note_id])
    magazine = Magazine.find(params[:article][:magazine_id])
    @adding = magazine.adding(note)
    if @adding.save
      redirect_to root_path
    else
      flash[:alert] = "失敗しました"
    end
  end

  def destroy
    note = Note.find(params[:article][:note_id])
    magazine = Magazine.find(params[:article][:magazine_id])
    @adding = magazine.unadding(note)
    if @adding.destroy
      redirect_to root_path
    else
      flash[:alert] = "失敗しました"
    end
  end

  private

  def set_note
    note = Note.find(params[:article][:note_id])
  end

end
