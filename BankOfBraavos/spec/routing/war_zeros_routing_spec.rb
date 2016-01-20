require "rails_helper"

RSpec.describe WarZerosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/war_zeros").to route_to("war_zeros#index")
    end

    it "routes to #new" do
      expect(:get => "/war_zeros/new").to route_to("war_zeros#new")
    end

    it "routes to #show" do
      expect(:get => "/war_zeros/1").to route_to("war_zeros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/war_zeros/1/edit").to route_to("war_zeros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/war_zeros").to route_to("war_zeros#create")
    end

    it "routes to #update" do
      expect(:put => "/war_zeros/1").to route_to("war_zeros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/war_zeros/1").to route_to("war_zeros#destroy", :id => "1")
    end

  end
end
