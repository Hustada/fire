class CommentsController < ApplicationController

  def create
    @pit = pit.find(params[:id])
  end
end
