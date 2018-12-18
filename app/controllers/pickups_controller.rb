class PickupsController < ApplicationController

  def index
    @hot_notes = Note.includes(:user).find(Like.group(:note_id).order('count(note_id) desc').pluck(:note_id))
    @new_notes = Note.all.includes(:user).order("created_at DESC")
    @old_notes = Note.all.includes(:user).order("created_at ASC")
  end
end
