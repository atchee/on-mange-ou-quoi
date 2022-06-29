class RecipesController < ApplicationController

  def index
    @recipes = policy_scope(Recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    # @recipe.user = current_user
    authorize @recipe

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :duration, :description, :category_id, :level_id, :serving)
  end
end
