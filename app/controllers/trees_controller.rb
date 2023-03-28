class TreesController < ApplicationController
  before_action :set_tree, only: %i[show destroy]
  before_action :create_tree, only: :create
  skip_before_action :authenticate_user!, only: :index

  def index
    @trees = Tree.all
  end

  def create
    @tree.user = current_user
    respond_to do |format|
      if @tree.save
        format.html { redirect_to trees_path(@tree), notice: 'The Tree was successfully created.' }
        format.json { render :show, status: :created, location: @tree }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @adoption = Adoption.new
  end

  def new
    @tree = Tree.new
  end

  def destroy
    @tree.destroy
    redirect_to index_path
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  # Méthode crée pour éviter d'avoir l'erreur ('This method has too many lines')
  def create_tree
    @tree = Tree.new(tree_params)
  end

  def tree_params
    params.require(:tree).permit(:name, :address, :fruit_type, :description,
                                 :price_per_year, :quantity_per_year)
  end
end
