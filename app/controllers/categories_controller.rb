class CategoriesController < ApplicationController

  def index
    @notes = Note.where(category: params[:category])
  end
end
