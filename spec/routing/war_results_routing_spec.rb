require "rails_helper"

RSpec.describe WarResultsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/war_results").to route_to("war_results#index")
    end

    it "routes to #new" do
      expect(:get => "/war_results/new").to route_to("war_results#new")
    end

    it "routes to #show" do
      expect(:get => "/war_results/1").to route_to("war_results#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/war_results/1/edit").to route_to("war_results#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/war_results").to route_to("war_results#create")
    end

    it "routes to #update" do
      expect(:put => "/war_results/1").to route_to("war_results#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/war_results/1").to route_to("war_results#destroy", :id => "1")
    end

  end
end
