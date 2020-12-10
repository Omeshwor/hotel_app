class RoomsController < ApplicationController
  def index
  end
  
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:notice] = "Room successfully created"
      redirect_to @room
    else
      flash[:alert] = "Something went wrong"
      render 'new'
    end
  end

  private
  def room_params
    params.require(:room).permit(:title, :description, images: [])
  end
    
end
