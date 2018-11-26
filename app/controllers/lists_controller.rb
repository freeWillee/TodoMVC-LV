class ListsController < ApplicationController
  before_action :authentication_required
  def index
    # if not logged in, can't see this --> back to login page.

    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find_by(id: params[:id])
    @item = Item.new
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
