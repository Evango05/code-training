class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def new
    @tree = Tree.new
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :address, :fruit_type, :description,
                                 :price_per_year, :quantity_per_year)
  end
end
