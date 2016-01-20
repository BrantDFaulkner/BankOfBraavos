require "rails_helper"

RSpec.describe ViolationTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/violation_types").to route_to("violation_types#index")
    end

    it "routes to #new" do
      expect(:get => "/violation_types/new").to route_to("violation_types#new")
    end

    it "routes to #show" do
      expect(:get => "/violation_types/1").to route_to("violation_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/violation_types/1/edit").to route_to("violation_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/violation_types").to route_to("violation_types#create")
    end

    it "routes to #update" do
      expect(:put => "/violation_types/1").to route_to("violation_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/violation_types/1").to route_to("violation_types#destroy", :id => "1")
    end

  end
end
