require 'rails_helper'

RSpec.describe "WarResults", type: :request do
  describe "GET /war_results" do
    it "works! (now write some real specs)" do
      get war_results_path
      expect(response).to have_http_status(200)
    end
  end
end
