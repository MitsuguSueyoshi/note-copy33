class MynotesController < ApplicationController

  def index
    if authenticate_user!
      @my_notes = current_user.notes.order("created_at DESC")
    end
  end

  def destroy_all
    checked_data = params[:deletes].keys
    checked_data.each do |num|
      Note.find(num).destroy
    end
    redirect_to root_path
  end

end
