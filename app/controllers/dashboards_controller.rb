require "note.rb"
class DashboardsController < ApplicationController

  def index
    @current_date = Time.now
    @notes =  Note.my_notes(current_user.id)
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
