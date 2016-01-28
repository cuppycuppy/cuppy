require "rails_helper"

RSpec.describe CupRecipesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cup_recipes").to route_to("cup_recipes#index")
    end

    it "routes to #new" do
      expect(:get => "/cup_recipes/new").to route_to("cup_recipes#new")
    end

    it "routes to #show" do
      expect(:get => "/cup_recipes/1").to route_to("cup_recipes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cup_recipes/1/edit").to route_to("cup_recipes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cup_recipes").to route_to("cup_recipes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cup_recipes/1").to route_to("cup_recipes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cup_recipes/1").to route_to("cup_recipes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cup_recipes/1").to route_to("cup_recipes#destroy", :id => "1")
    end

  end
end
