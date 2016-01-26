class HomeController < ApplicationController
  def index
    @situations = Situation.all 
  end
end
