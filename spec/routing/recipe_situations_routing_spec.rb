require "rails_helper"

RSpec.describe RecipeSituationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recipe_situations").to route_to("recipe_situations#index")
    end

    it "routes to #new" do
      expect(:get => "/recipe_situations/new").to route_to("recipe_situations#new")
    end

    it "routes to #show" do
      expect(:get => "/recipe_situations/1").to route_to("recipe_situations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recipe_situations/1/edit").to route_to("recipe_situations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recipe_situations").to route_to("recipe_situations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recipe_situations/1").to route_to("recipe_situations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recipe_situations/1").to route_to("recipe_situations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recipe_situations/1").to route_to("recipe_situations#destroy", :id => "1")
    end

  end
end
