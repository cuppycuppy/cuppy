require 'rails_helper'

RSpec.describe "CupRecipes", type: :request do
  describe "GET /cup_recipes" do
    it "works! (now write some real specs)" do
      get cup_recipes_path
      expect(response).to have_http_status(200)
    end
  end
end
