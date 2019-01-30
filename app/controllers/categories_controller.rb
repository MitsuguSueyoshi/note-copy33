class CategoriesController < ApplicationController

  def index
    notes = Note.create_hot_notes
    category = params[:category]
    @hot_notes = notes.select{ |note| note.category_before_type_cast == params[:category].to_i }
    @new_notes = Note.where(category: params[:category]).includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end
end
