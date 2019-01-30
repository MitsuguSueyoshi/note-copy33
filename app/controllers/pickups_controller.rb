class PickupsController < ApplicationController
  def index
    @hot_notes = Note.create_hot_notes
    @new_notes = Note.all.includes(:user).order("created_at DESC")
    @old_notes = Note.all.includes(:user).order("created_at ASC")
  end
end
