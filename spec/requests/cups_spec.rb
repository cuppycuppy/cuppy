require 'rails_helper'

RSpec.describe "Cups", type: :request do
  describe "GET /cups" do
    it "works! (now write some real specs)" do
      get cups_path
      expect(response).to have_http_status(200)
    end
  end
end
