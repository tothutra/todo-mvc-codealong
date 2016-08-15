class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  def update
    #find item
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to list_path(@item.list)
  end

  private

  def item_params
    params.require(:item).permit(:description, :status)
  end

end
