require 'rails_helper'

RSpec.describe "WarHeros", type: :request do
  describe "GET /war_heros" do
    it "works! (now write some real specs)" do
      get war_heros_path
      expect(response).to have_http_status(200)
    end
  end
end
