require 'rails_helper'

RSpec.describe "CollectCriterions", type: :request do
  describe "GET /collect_criterions" do
    it "works! (now write some real specs)" do
      get collect_criterions_path
      expect(response).to have_http_status(200)
    end
  end
end
