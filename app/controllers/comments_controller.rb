class CommentsController < ApplicationController


 def create
  @pit= Pit.find(params[:pit_id])
  @comment = @pit.comments.build(comments_params)
  @comment.user = current_user
  @comment.save

  redirect_to pit_path(@pit)
end

  def destroy
    @pit = Pit.find(params[:pit_id])
    @comment = @pit.comments.find(params[:id])
    @comment.destroy
    redirect_to pit_path(@pit)
end

    


def show  
end

  private

def comments_params
    params.require(:comment).permit(:body, :user_id)
end

end
