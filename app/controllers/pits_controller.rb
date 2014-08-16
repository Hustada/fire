class PitsController < ApplicationController

def new
  @pit = Pit.new
end

def index
  @pit = Pit.all
  @user = User.find_by(params[:id])
  @pit = @user.pits
  @pits = Pit.order('created_at DESC').group_by { |pit| pit.created_at.strftime("%B %Y") }
end

def create
  @user = current_user
  @pit = current_user.pits.create(pit_params)
    if @pit.save
      redirect_to @pit
    else
      render 'new'
    end
end

def show
  @pit = Pit.find(params[:id])
end

def edit
end

def update
end

private

def pit_params
    params.require(:pit).permit(:topic, :summary, :image, :video_url, :author, :user_id)
end

end
