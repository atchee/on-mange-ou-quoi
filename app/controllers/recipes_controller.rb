class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @recipes = policy_scope(Recipe)
  end

  def show
    # @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    authorize @recipe

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def update
    # @recipe = Recipe.find(params[:id])
    authorize @recipe
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    # @recipe = Recipe.find(params[:id])
    authorize @recipe
    @recipe.destroy
    redirect_to recipes_path, status: :see_other
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :duration, :description, :category_id, :level_id, :serving, :photo)
  end
end
