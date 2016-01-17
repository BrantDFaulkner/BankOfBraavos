require "rails_helper"

RSpec.describe ViolationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/violations").to route_to("violations#index")
    end

    it "routes to #new" do
      expect(:get => "/violations/new").to route_to("violations#new")
    end

    it "routes to #show" do
      expect(:get => "/violations/1").to route_to("violations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/violations/1/edit").to route_to("violations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/violations").to route_to("violations#create")
    end

    it "routes to #update" do
      expect(:put => "/violations/1").to route_to("violations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/violations/1").to route_to("violations#destroy", :id => "1")
    end

  end
end
