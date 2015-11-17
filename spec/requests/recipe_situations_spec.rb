require 'rails_helper'

RSpec.describe "RecipeSituations", type: :request do
  describe "GET /recipe_situations" do
    it "works! (now write some real specs)" do
      get recipe_situations_path
      expect(response).to have_http_status(200)
    end
  end
end
