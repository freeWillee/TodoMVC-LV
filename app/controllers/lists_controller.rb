class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find_by(id: params[:id])
    @item = @list.items.build
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_url(@list)
    else
      @lists = List.all
      render :index
    end
  end

  private
  def list_params # strong params
    params.require(:list).permit(:name)
  end
end
