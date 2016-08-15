class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    # render 'lists/index.html.erb'
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new
  end

  def create
    @list = List.new(list_params)
    @list.name = params[:list][:name]
    if @list.save
      redirect_to list_url(@list)
    else
      @lists = List.all
      render :index
    end
  end
  
  private

    def list_params # strong parameters
      params.require(:list).permit(:name)
    end

end
