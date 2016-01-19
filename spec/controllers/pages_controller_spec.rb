require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #policies" do
    it "returns http success" do
      get :policies
      expect(response).to have_http_status(:success)
    end
  end

end
