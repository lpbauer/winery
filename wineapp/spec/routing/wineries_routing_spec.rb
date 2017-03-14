require "rails_helper"

RSpec.describe WineriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wineries").to route_to("wineries#index")
    end

    it "routes to #new" do
      expect(:get => "/wineries/new").to route_to("wineries#new")
    end

    it "routes to #show" do
      expect(:get => "/wineries/1").to route_to("wineries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wineries/1/edit").to route_to("wineries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wineries").to route_to("wineries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wineries/1").to route_to("wineries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wineries/1").to route_to("wineries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wineries/1").to route_to("wineries#destroy", :id => "1")
    end

  end
end
