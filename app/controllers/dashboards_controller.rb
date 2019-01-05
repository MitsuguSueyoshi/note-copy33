class DashboardsController < ApplicationController

  def index
    @current_date = Time.now
    @notes = Note.where(user_id: current_user.id).order("created_at DESC")
    @views_count = 0
    @comments_count = 0
    @likes_count = 0
    @notes.each do |note|
      @views_count += note.impressionist_count
      @comments_count += note.comments.count
      @likes_count += note.likes.count
    end
  end
end
