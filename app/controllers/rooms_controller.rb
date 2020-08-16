class RoomsController < ApplicationController
  def index
  end
  
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params[:title, :description])
    if @room.save
      flash[:success] = "Room successfully created"
      redirect_to @room
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  
end
