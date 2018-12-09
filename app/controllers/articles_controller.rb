class ArticlesController < ApplicationController
  before_action :set_note

  def create
    note = Note.find(params[:article][:note_id])
    magazine = Magazine.find(params[:article][:magazine_id])
    adding = magazine.adding(note)
    if adding.save
      respond_to do |format|
        format.html
        format.json
      end
    else
      flash[:alert] = "失敗しました"
    end
  end

  def destroy
    note = Note.find(params[:article][:note_id])
    magazine = Magazine.find(params[:article][:magazine_id])
    adding = magazine.unadding(note)
    if adding.destroy
      respond_to do |format|
        format.html
        format.json
      end
    else
      flash[:alert] = "失敗しました"
    end
  end

  private

  def set_note
    note = Note.find(params[:article][:note_id])
  end

end
