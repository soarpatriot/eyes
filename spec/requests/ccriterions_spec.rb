require 'rails_helper'

RSpec.describe "Ccriterions", type: :request do
  describe "GET /ccriterions" do
    it "works! (now write some real specs)" do
      get ccriterions_path
      expect(response).to have_http_status(200)
    end
  end
end
