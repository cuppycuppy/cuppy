require 'rails_helper'

RSpec.describe "CategorySituations", type: :request do
  describe "GET /category_situations" do
    it "works! (now write some real specs)" do
      get category_situations_path
      expect(response).to have_http_status(200)
    end
  end
end
