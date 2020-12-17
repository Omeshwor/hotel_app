class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end
  
  def new
    @rooms = Room.all
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

  def edit
    @rooms = Room.all
    @room = Room.find(params[:id])
  end

  def show
    @rooms = Room.all
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
      if @room.update(room_params)
        flash[:notice] = "Room was successfully updated"
        redirect_to @room
      else
        flash[:alert] = "Something went wrong"
        render 'edit'
      end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash[:danger] = " Room destroyed successfully"
    redirect_to rooms_path
  end
  

  private
  def room_params
    params.require(:room).permit(:title, :description, images: [])
  end
    
end
