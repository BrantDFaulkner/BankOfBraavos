require 'rails_helper'

RSpec.describe "ViolationTypes", type: :request do
  describe "GET /violation_types" do
    it "works! (now write some real specs)" do
      get violation_types_path
      expect(response).to have_http_status(200)
    end
  end
end
