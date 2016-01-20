require "rails_helper"

RSpec.describe WarsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wars").to route_to("wars#index")
    end

    it "routes to #new" do
      expect(:get => "/wars/new").to route_to("wars#new")
    end

    it "routes to #show" do
      expect(:get => "/wars/1").to route_to("wars#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wars/1/edit").to route_to("wars#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wars").to route_to("wars#create")
    end

    it "routes to #update" do
      expect(:put => "/wars/1").to route_to("wars#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wars/1").to route_to("wars#destroy", :id => "1")
    end

  end
end
