module PitsHelper

  def convincing_pit
    @pit = Pit.find(params[:id])
    if @pit.get_likes.size.to_i > 5
      @pit.get_likes.size.to_i
    else
      (0)
    end
  end

  
end
