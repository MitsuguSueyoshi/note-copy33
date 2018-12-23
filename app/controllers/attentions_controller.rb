class AttentionsController < ApplicationController

  def index
    @manga_notes = Note.where(category: 0).includes(:user).order("created_at DESC").limit(9)
    @column_notes = Note.where(category: 1).includes(:user).order("created_at DESC").limit(9)
    @novel_notes = Note.where(category: 2).includes(:user).order("created_at DESC").limit(9)
    @photo_notes = Note.where(category: 3).includes(:user).order("created_at DESC").limit(9)
    @sound_notes = Note.where(category: 4).includes(:user).order("created_at DESC").limit(9)
    @business_notes = Note.where(category: 5).includes(:user).order("created_at DESC").limit(9)
    @lifestyle_notes = Note.where(category: 6).includes(:user).order("created_at DESC").limit(9)
    @technology_notes = Note.where(category: 7).includes(:user).order("created_at DESC").limit(9)
    @entertainment_notes = Note.where(category: 8).includes(:user).order("created_at DESC").limit(9)
  end
end
