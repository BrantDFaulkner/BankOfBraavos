require 'rails_helper'

RSpec.describe "ActivityStatuses", type: :request do
  describe "GET /activity_statuses" do
    it "works! (now write some real specs)" do
      get activity_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
