class CommentsController < ApplicationController


 def create
  @pit= Pit.find(params[:pit_id])
  @comment = @pit.comments.create(comments_params)
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
    params.require(:comment).permit(:body)
end

end
