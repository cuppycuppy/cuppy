require "rails_helper"

RSpec.describe UserSituationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_situations").to route_to("user_situations#index")
    end

    it "routes to #new" do
      expect(:get => "/user_situations/new").to route_to("user_situations#new")
    end

    it "routes to #show" do
      expect(:get => "/user_situations/1").to route_to("user_situations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_situations/1/edit").to route_to("user_situations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_situations").to route_to("user_situations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_situations/1").to route_to("user_situations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_situations/1").to route_to("user_situations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_situations/1").to route_to("user_situations#destroy", :id => "1")
    end

  end
end
