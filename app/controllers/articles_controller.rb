class ArticlesController < ApplicationController
  protect_from_forgery except: :destroy
  before_action :set_note_and_magazine

  def create
    note = Note.find(params[:article][:note_id])
    magazine = Magazine.find(params[:article][:magazine_id])
    @adding = magazine.adding(note)
    if @adding.save
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "失敗しました"
    end
  end

  def destroy
    note = Note.find(params[:article][:note_id])
    magazine = Magazine.find(params[:article][:magazine_id])
    @adding = magazine.unadding(note)
    if @adding.destroy
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "失敗しました"
    end
  end

  private

  def set_note_and_magazine
    note = Note.find(params[:article][:note_id])
    magazine = Magazine.find(params[:article][:magazine_id])
  end

end
