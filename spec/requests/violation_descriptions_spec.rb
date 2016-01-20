require 'rails_helper'

RSpec.describe "ViolationDescriptions", type: :request do
  describe "GET /violation_descriptions" do
    it "works! (now write some real specs)" do
      get violation_descriptions_path
      expect(response).to have_http_status(200)
    end
  end
end
