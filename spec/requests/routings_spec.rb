require 'rails_helper'

RSpec.describe "Routings", type: :request do
  describe "GET /routings" do
    it "works! (now write some real specs)" do
      get routings_path
      expect(response).to have_http_status(200)
    end
  end
end
