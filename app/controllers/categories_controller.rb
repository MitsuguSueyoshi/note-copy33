class CategoriesController < ApplicationController

  def index
    notes = Note.find(Like.group(:note_id).order('count(note_id) desc').pluck(:note_id))
    @hot_notes = notes.select{ |note| note.category_before_type_cast == params[:category].to_i }
    @new_notes = Note.where(category: params[:category]).order("created_at DESC")
  end
end
