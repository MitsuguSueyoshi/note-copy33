class DashboardsController < ApplicationController

  def index
    @notes = Note.where(user_id: current_user.id)
    @comments_count = 0
    @likes_count = 0
    @notes.each do |note|
      @comments_count += note.comments.count
      @likes_count += note.likes.count
    end
  end
end
