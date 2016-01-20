require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #policy" do
    it "returns http success" do
      get :policy
      expect(response).to have_http_status(:success)
    end
  end

end
