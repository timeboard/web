require "spec_helper"

describe CalendarTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/calendar_tasks").should route_to("calendar_tasks#index")
    end

    it "routes to #new" do
      get("/calendar_tasks/new").should route_to("calendar_tasks#new")
    end

    it "routes to #show" do
      get("/calendar_tasks/1").should route_to("calendar_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/calendar_tasks/1/edit").should route_to("calendar_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/calendar_tasks").should route_to("calendar_tasks#create")
    end

    it "routes to #update" do
      put("/calendar_tasks/1").should route_to("calendar_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/calendar_tasks/1").should route_to("calendar_tasks#destroy", :id => "1")
    end

  end
end
