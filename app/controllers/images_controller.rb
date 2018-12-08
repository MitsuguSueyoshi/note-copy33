class ImagesController < ApplicationController

 def index
  @notes = Note.where(user_id: current_user.id)
 end
end
