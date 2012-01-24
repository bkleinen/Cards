require "spec_helper"

describe IndexCardsController do
  describe "routing" do

    it "routes to #index" do
      get("/index_cards").should route_to("index_cards#index")
    end

    it "routes to #new" do
      get("/index_cards/new").should route_to("index_cards#new")
    end

    it "routes to #show" do
      get("/index_cards/1").should route_to("index_cards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/index_cards/1/edit").should route_to("index_cards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/index_cards").should route_to("index_cards#create")
    end

    it "routes to #update" do
      put("/index_cards/1").should route_to("index_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/index_cards/1").should route_to("index_cards#destroy", :id => "1")
    end

  end
end
