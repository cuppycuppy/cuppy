class HomeController < ApplicationController
  def index
    @situations = Situation.all 
    @categories = Category.all
    @search = Recipe.search(params[:q])
  end
end
