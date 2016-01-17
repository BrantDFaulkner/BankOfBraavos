require 'rails_helper'

RSpec.describe "Violations", type: :request do
  describe "GET /violations" do
    it "works! (now write some real specs)" do
      get violations_path
      expect(response).to have_http_status(200)
    end
  end
end
