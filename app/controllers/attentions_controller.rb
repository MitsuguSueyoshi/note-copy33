class AttentionsController < ApplicationController

  def index
    @manga_notes = Note.search_with_category(0).recent
    @column_notes = Note.search_with_category(1).recent
    @novel_notes = Note.search_with_category(2).recent
    @photo_notes = Note.search_with_category(3).recent
    @sound_notes = Note.search_with_category(4).recent
    @business_notes = Note.search_with_category(5).recent
    @lifestyle_notes = Note.search_with_category(6).recent
    @technology_notes = Note.search_with_category(7).recent
    @entertainment_notes = Note.search_with_category(8).recent
  end
end
