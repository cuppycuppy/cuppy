require 'rails_helper'

RSpec.describe "UserSituations", type: :request do
  describe "GET /user_situations" do
    it "works! (now write some real specs)" do
      get user_situations_path
      expect(response).to have_http_status(200)
    end
  end
end
