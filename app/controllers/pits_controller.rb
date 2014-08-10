class PitsController < ApplicationController

def new
  @pit = Pit.new
end

def index
  @user = User.find_by(params[:id])
  @pit = @user.pits
  @pit = Pit.all
  @pits = Pit.order('created_at DESC')
end

def create
  @pit = Pit.new(pit_params)
    
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
    params.require(:pit).permit(:topic, :summary, :image, :video_url)
end

end
