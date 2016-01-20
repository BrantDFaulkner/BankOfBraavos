require "rails_helper"

RSpec.describe WarHerosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/war_heros").to route_to("war_heros#index")
    end

    it "routes to #new" do
      expect(:get => "/war_heros/new").to route_to("war_heros#new")
    end

    it "routes to #show" do
      expect(:get => "/war_heros/1").to route_to("war_heros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/war_heros/1/edit").to route_to("war_heros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/war_heros").to route_to("war_heros#create")
    end

    it "routes to #update" do
      expect(:put => "/war_heros/1").to route_to("war_heros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/war_heros/1").to route_to("war_heros#destroy", :id => "1")
    end

  end
end
