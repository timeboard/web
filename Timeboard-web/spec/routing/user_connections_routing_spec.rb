require "spec_helper"

describe UserConnectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_connections").should route_to("user_connections#index")
    end

    it "routes to #new" do
      get("/user_connections/new").should route_to("user_connections#new")
    end

    it "routes to #show" do
      get("/user_connections/1").should route_to("user_connections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_connections/1/edit").should route_to("user_connections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_connections").should route_to("user_connections#create")
    end

    it "routes to #update" do
      put("/user_connections/1").should route_to("user_connections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_connections/1").should route_to("user_connections#destroy", :id => "1")
    end

  end
end
