require 'rails_helper'

RSpec.describe "WarZeros", type: :request do
  describe "GET /war_zeros" do
    it "works! (now write some real specs)" do
      get war_zeros_path
      expect(response).to have_http_status(200)
    end
  end
end
