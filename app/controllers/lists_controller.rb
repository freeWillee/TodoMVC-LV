class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find_by(id: params[:id])
  end

  def create
    @list = List.create(list_params)
    redirect_to list_url(@list)
  end

  private
  def list_params # strong params
    params.require(:list).permit(:name)
  end
end
