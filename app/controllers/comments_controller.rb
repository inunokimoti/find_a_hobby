class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to hobby_path(@comment.hobby)
    else
      @hobby = @comment.hobby
      @comments = @hobby.comments
      render "hobby/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, hobby_id: params[:hobby_id])
  end

end
