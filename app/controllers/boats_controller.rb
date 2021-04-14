class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render "index.html.erb"
  end

  def show
    @boat = Boat.find(params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @boat = Boat.new(
      name: params[:name],
      color: params[:color],
      capacity: params[:capacity]
    )
    @boat.save
    redirect_to "/boats/#{@boat.id}"
  end
  
  def update
    @boat = Boat.find(params[:id])
    @boat.update(
      name: params[:name] || @boat.name,
      color: params[:color] || @boat.color,
      capacity: params[:capacity] || @boat.capacity,
    )
    redirect_to "/boats/#{@boat.id}"
  end

  def edit
    @boat = Boat.find(params[:id])
    render "edit.html.erb"
  end
end
