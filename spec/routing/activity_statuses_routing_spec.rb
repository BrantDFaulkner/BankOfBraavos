require "rails_helper"

RSpec.describe ActivityStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/activity_statuses").to route_to("activity_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/activity_statuses/new").to route_to("activity_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/activity_statuses/1").to route_to("activity_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/activity_statuses/1/edit").to route_to("activity_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/activity_statuses").to route_to("activity_statuses#create")
    end

    it "routes to #update" do
      expect(:put => "/activity_statuses/1").to route_to("activity_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/activity_statuses/1").to route_to("activity_statuses#destroy", :id => "1")
    end

  end
end
