require "rails_helper"

RSpec.describe ViolationDescriptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/violation_descriptions").to route_to("violation_descriptions#index")
    end

    it "routes to #new" do
      expect(:get => "/violation_descriptions/new").to route_to("violation_descriptions#new")
    end

    it "routes to #show" do
      expect(:get => "/violation_descriptions/1").to route_to("violation_descriptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/violation_descriptions/1/edit").to route_to("violation_descriptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/violation_descriptions").to route_to("violation_descriptions#create")
    end

    it "routes to #update" do
      expect(:put => "/violation_descriptions/1").to route_to("violation_descriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/violation_descriptions/1").to route_to("violation_descriptions#destroy", :id => "1")
    end

  end
end
