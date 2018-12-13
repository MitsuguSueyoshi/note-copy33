class CategoriesController < ApplicationController

  def index
    @hot_notes = Note.where(category: params[:category])
    @new_notes = Note.where(category: params[:category]).order("created_at DESC")
  end
end
