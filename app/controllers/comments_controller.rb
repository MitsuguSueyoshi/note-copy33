class CommentsController < ApplicationController
  before_action :set_note

  def create
    @comment = @note.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html{ redirect_to note_comments_path(@comment), notice: 'コメントが送信されました' }
        format.json
      end
    else
      @comments = @note.comments.includes(:user)
      flash.now[:alert] = 'コメントを入力してください'
      redirect_to note_path(@note)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      respond_to do |format|
        format.html{ redirect_to note_path(@note), notice: 'コメントが削除されました' }
        format.json
      end
    else
      @comments = @note.comments.includes(:user)
      flash.now[:alert] = 'コメントの削除に失敗しました'
      redirect_to note_path(@note)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id)
  end

  def set_note
    @note = Note.find(params[:note_id])
  end
end
