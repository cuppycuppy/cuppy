class CookedsController < ApplicationController
  # before_action :signed_in_user, only: [:index, :create, :destroy]

  def create
    @recipe = Recipe.find(params[:recipe_id])
    current_user.cooked!(@recipe)
  end

  def index
    @recipe_photos = RecipePhoto.all
  end
  
  def destroy
    @recipe = Recipe.find(params[:id]).recipe
    current_user.uncooked!(@recipe)
  end
end