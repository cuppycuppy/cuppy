class HomeController < ApplicationController
  def index
    @situations = Situation.all 
    @categories = Category.all
  end
end
