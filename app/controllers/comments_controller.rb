class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to prototype_path(@prototype)
    else
      redirect_to prototype_path(@prototype)
    end
  end

  private
   def comment_params
    params.require(:comment).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
end
