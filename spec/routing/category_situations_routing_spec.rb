require "rails_helper"

RSpec.describe CategorySituationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/category_situations").to route_to("category_situations#index")
    end

    it "routes to #new" do
      expect(:get => "/category_situations/new").to route_to("category_situations#new")
    end

    it "routes to #show" do
      expect(:get => "/category_situations/1").to route_to("category_situations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/category_situations/1/edit").to route_to("category_situations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/category_situations").to route_to("category_situations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/category_situations/1").to route_to("category_situations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/category_situations/1").to route_to("category_situations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/category_situations/1").to route_to("category_situations#destroy", :id => "1")
    end

  end
end
