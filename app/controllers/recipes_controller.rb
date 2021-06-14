class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "First Ingredient")
    @recipe.ingredients.build(name: "Second Ingredient")
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  def index
    @recipes = Recipe.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [ :name, :quantity ]
    )
  end
end
