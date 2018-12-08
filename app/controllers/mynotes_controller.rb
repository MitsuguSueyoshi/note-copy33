class MynotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @my_notes = current_user.notes.order("created_at DESC")
    @my_notes_count = @my_notes.count
  end

  def destroy_all
    checked_data = params[:deletes].keys
    checked_data.each do |num|
      Note.find(num).destroy
    end
    redirect_to mynotes_path
  end

end
