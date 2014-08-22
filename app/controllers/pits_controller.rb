class PitsController < ApplicationController

def new
  @pit = Pit.new
end

def index
  @pit = Pit.all
  @user = User.find_by(params[:id])
  @pits = Pit.paginate(:page => params[:page]).order('created_at ASC').group_by { |pit| pit.created_at.strftime("%B %Y") }
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
   @pit = Pit.find(pit_params[:id])
     if @pit.update_attributes(pit_params)
       redirect_to @pit
     end
end

private

def pit_params
    params.require(:pit).permit(:topic, :summary, :image, :video_url, :author, :user_id)
end

end
